# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::MonitorTest < Deeprails::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @deeprails.monitor.create(name: "name")

    assert_pattern do
      response => Deeprails::APIResponse
    end

    assert_pattern do
      response => {
        success: Deeprails::Internal::Type::Boolean,
        data: Deeprails::APIResponse::Data | nil,
        message: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @deeprails.monitor.retrieve("monitor_id")

    assert_pattern do
      response => Deeprails::Models::MonitorRetrieveResponse
    end

    assert_pattern do
      response => {
        success: Deeprails::Internal::Type::Boolean,
        data: Deeprails::Models::MonitorRetrieveResponse::Data | nil,
        message: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @deeprails.monitor.update("monitor_id")

    assert_pattern do
      response => Deeprails::APIResponse
    end

    assert_pattern do
      response => {
        success: Deeprails::Internal::Type::Boolean,
        data: Deeprails::APIResponse::Data | nil,
        message: String | nil
      }
    end
  end

  def test_submit_event_required_params
    skip("Prism tests are disabled")

    response =
      @deeprails.monitor.submit_event(
        "monitor_id",
        guardrail_metrics: [:correctness],
        model_input: {},
        model_output: "model_output"
      )

    assert_pattern do
      response => Deeprails::Models::MonitorSubmitEventResponse
    end

    assert_pattern do
      response => {
        success: Deeprails::Internal::Type::Boolean,
        data: Deeprails::Models::MonitorSubmitEventResponse::Data | nil,
        message: String | nil
      }
    end
  end
end
