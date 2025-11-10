# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::DefendTest < Deeprails::Test::ResourceTest
  def test_create_workflow_required_params
    skip("Prism tests are disabled")

    response =
      @deeprails.defend.create_workflow(improvement_action: :regen, name: "name", threshold_type: :automatic)

    assert_pattern do
      response => Deeprails::DefendCreateResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        status: Deeprails::DefendCreateResponse::Status,
        workflow_id: String
      }
    end
  end

  def test_retrieve_event_required_params
    skip("Prism tests are disabled")

    response = @deeprails.defend.retrieve_event("event_id", workflow_id: "workflow_id")

    assert_pattern do
      response => Deeprails::WorkflowEventDetailResponse
    end

    assert_pattern do
      response => {
        event_id: String,
        event_status: Deeprails::WorkflowEventDetailResponse::EventStatus,
        filtered: Deeprails::Internal::Type::Boolean,
        improvement_tool_type: Deeprails::WorkflowEventDetailResponse::ImprovementToolType,
        workflow_id: String,
        automatic_hallucination_tolerance_levels: ^(Deeprails::Internal::Type::HashOf[enum: Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel]) | nil,
        capabilities: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::Capability]) | nil,
        custom_hallucination_threshold_values: ^(Deeprails::Internal::Type::HashOf[Float]) | nil,
        evaluation_history: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::EvaluationHistory]) | nil,
        evaluation_result: ^(Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]) | nil,
        files: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::File]) | nil,
        improved_model_output: String | nil,
        improvement_tool_status: Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus | nil,
        threshold_type: Deeprails::WorkflowEventDetailResponse::ThresholdType | nil
      }
    end
  end

  def test_retrieve_workflow
    skip("Prism tests are disabled")

    response = @deeprails.defend.retrieve_workflow("workflow_id")

    assert_pattern do
      response => Deeprails::DefendResponse
    end

    assert_pattern do
      response => {
        name: String,
        workflow_id: String,
        automatic_hallucination_tolerance_levels: ^(Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel]) | nil,
        capabilities: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::Capability]) | nil,
        created_at: Time | nil,
        custom_hallucination_threshold_values: ^(Deeprails::Internal::Type::HashOf[Float]) | nil,
        description: String | nil,
        events: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::Event]) | nil,
        files: ^(Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::File]) | nil,
        stats: Deeprails::DefendResponse::Stats | nil,
        status: Deeprails::DefendResponse::Status | nil,
        threshold_type: Deeprails::DefendResponse::ThresholdType | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_submit_event_required_params
    skip("Prism tests are disabled")

    response =
      @deeprails.defend.submit_event(
        "workflow_id",
        model_input: {},
        model_output: "model_output",
        model_used: "model_used",
        run_mode: :precision_plus
      )

    assert_pattern do
      response => Deeprails::WorkflowEventResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        event_id: String,
        status: Deeprails::WorkflowEventResponse::Status,
        workflow_id: String
      }
    end
  end

  def test_update_workflow
    skip("Prism tests are disabled")

    response = @deeprails.defend.update_workflow("workflow_id")

    assert_pattern do
      response => Deeprails::DefendUpdateResponse
    end

    assert_pattern do
      response => {
        modified_at: Time,
        status: Deeprails::DefendUpdateResponse::Status,
        workflow_id: String
      }
    end
  end
end
