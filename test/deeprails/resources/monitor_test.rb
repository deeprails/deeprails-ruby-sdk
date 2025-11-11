# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::MonitorTest < Deeprails::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @deeprails.monitor.create(guardrail_metrics: [:correctness], name: "name")

    assert_pattern do
      response => Deeprails::MonitorCreateResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        monitor_id: String,
        status: Deeprails::MonitorCreateResponse::Status
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @deeprails.monitor.retrieve("monitor_id")

    assert_pattern do
      response => Deeprails::MonitorDetailResponse
    end

    assert_pattern do
      response => {
        monitor_id: String,
        name: String,
        status: Deeprails::MonitorDetailResponse::Status,
        capabilities: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Capability]) | nil,
        created_at: Time | nil,
        description: String | nil,
        evaluations: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Evaluation]) | nil,
        files: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::File]) | nil,
        stats: Deeprails::MonitorDetailResponse::Stats | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @deeprails.monitor.update("monitor_id")

    assert_pattern do
      response => Deeprails::MonitorUpdateResponse
    end

    assert_pattern do
      response => {
        modified_at: Time,
        monitor_id: String,
        status: Deeprails::MonitorUpdateResponse::Status
      }
    end
  end

  def test_submit_event_required_params
    skip("Prism tests are disabled")

    response = @deeprails.monitor.submit_event("monitor_id", model_input: {}, model_output: "model_output")

    assert_pattern do
      response => Deeprails::MonitorEventResponse
    end

    assert_pattern do
      response => {
        event_id: String,
        monitor_id: String,
        created_at: Time | nil
      }
    end
  end
end
