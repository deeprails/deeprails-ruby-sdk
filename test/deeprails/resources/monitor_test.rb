# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::MonitorTest < Deeprails::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @deep_rails.monitor.create(guardrail_metrics: [:correctness], name: "name")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @deep_rails.monitor.retrieve("monitor_id")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @deep_rails.monitor.update("monitor_id")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_retrieve_event_required_params
    skip("Prism tests are disabled")

    response = @deep_rails.monitor.retrieve_event("event_id", monitor_id: "monitor_id")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_submit_event_required_params
    skip("Prism tests are disabled")

    response = @deep_rails.monitor.submit_event("monitor_id", model_input: {}, model_output: "model_output")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end
end
