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
        capabilities: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Capability]),
        created_at: Time,
        evaluations: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Evaluation]),
        files: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::File]),
        monitor_id: String,
        name: String,
        stats: Deeprails::MonitorDetailResponse::Stats,
        status: Deeprails::MonitorDetailResponse::Status,
        updated_at: Time,
        description: String | nil
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

  def test_retrieve_event_required_params
    skip("Prism tests are disabled")

    response = @deeprails.monitor.retrieve_event("event_id", monitor_id: "monitor_id")

    assert_pattern do
      response => Deeprails::MonitorEventDetailResponse
    end

    assert_pattern do
      response => {
        capabilities: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorEventDetailResponse::Capability]) | nil,
        eval_time: String | nil,
        evaluation_result: ^(Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]) | nil,
        event_id: String | nil,
        files: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorEventDetailResponse::File]) | nil,
        guardrail_metrics: ^(Deeprails::Internal::Type::ArrayOf[String]) | nil,
        model_input: ^(Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]) | nil,
        model_output: String | nil,
        monitor_id: String | nil,
        nametag: String | nil,
        run_mode: Deeprails::MonitorEventDetailResponse::RunMode | nil,
        status: Deeprails::MonitorEventDetailResponse::Status | nil,
        timestamp: Time | nil
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
