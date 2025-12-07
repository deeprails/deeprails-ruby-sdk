# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::DefendTest < Deeprails::Test::ResourceTest
  def test_create_workflow_required_params
    skip("Prism tests are disabled")

    response =
      @deep_rails.defend.create_workflow(
        improvement_action: :regen,
        name: "name",
        threshold_type: :automatic,
        automatic_hallucination_tolerance_levels: {completeness: :low, instruction_adherence: :medium}
      )

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_retrieve_event_required_params
    skip("Prism tests are disabled")

    response = @deep_rails.defend.retrieve_event("event_id", workflow_id: "workflow_id")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_retrieve_workflow
    skip("Prism tests are disabled")

    response = @deep_rails.defend.retrieve_workflow("workflow_id")

    assert_pattern do
      response => Deeprails::DefendResponse
    end

    assert_pattern do
      response => {
        automatic_hallucination_tolerance_levels: ^(Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel]) | nil,
        created_at: Time | nil,
        custom_hallucination_threshold_values: Deeprails::Internal::Type::Unknown | nil,
        description: String | nil,
        improvement_action: Deeprails::DefendResponse::ImprovementAction | nil,
        name: String | nil,
        stats: Deeprails::DefendResponse::Stats | nil,
        status: Deeprails::DefendResponse::Status | nil,
        threshold_type: Deeprails::DefendResponse::ThresholdType | nil,
        updated_at: Time | nil,
        workflow_id: String | nil
      }
    end
  end

  def test_submit_event_required_params
    skip("Prism tests are disabled")

    response =
      @deep_rails.defend.submit_event(
        "workflow_id",
        model_input: {},
        model_output: "model_output",
        model_used: "model_used",
        run_mode: :precision_plus
      )

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end

  def test_update_workflow
    skip("Prism tests are disabled")

    response = @deep_rails.defend.update_workflow("workflow_id")

    assert_pattern do
      response => Deeprails::Internal::Type::Unknown
    end
  end
end
