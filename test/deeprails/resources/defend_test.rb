# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::DefendTest < Deeprails::Test::ResourceTest
  def test_create_workflow_required_params
    skip("Prism tests are disabled")

    response =
      @deeprails.defend.create_workflow(
        improvement_action: :regenerate,
        metrics: {foo: 0},
        name: "name",
        type: :automatic
      )

    assert_pattern do
      response => Deeprails::DefendResponse
    end

    assert_pattern do
      response => {
        name: String,
        workflow_id: String,
        created_at: Time | nil,
        description: String | nil,
        improvement_action: Deeprails::DefendResponse::ImprovementAction | nil,
        max_retries: Integer | nil,
        modified_at: Time | nil,
        status: Deeprails::DefendResponse::Status | nil,
        success_rate: Float | nil
      }
    end
  end

  def test_retrieve_event_required_params
    skip("Prism tests are disabled")

    response = @deeprails.defend.retrieve_event("event_id", workflow_id: "workflow_id")

    assert_pattern do
      response => Deeprails::WorkflowEventResponse
    end

    assert_pattern do
      response => {
        event_id: String,
        workflow_id: String,
        attempt_number: Integer | nil,
        evaluation_id: String | nil,
        filtered: Deeprails::Internal::Type::Boolean | nil
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
        created_at: Time | nil,
        description: String | nil,
        improvement_action: Deeprails::DefendResponse::ImprovementAction | nil,
        max_retries: Integer | nil,
        modified_at: Time | nil,
        status: Deeprails::DefendResponse::Status | nil,
        success_rate: Float | nil
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
        event_id: String,
        workflow_id: String,
        attempt_number: Integer | nil,
        evaluation_id: String | nil,
        filtered: Deeprails::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_workflow
    skip("Prism tests are disabled")

    response = @deeprails.defend.update_workflow("workflow_id")

    assert_pattern do
      response => Deeprails::DefendResponse
    end

    assert_pattern do
      response => {
        name: String,
        workflow_id: String,
        created_at: Time | nil,
        description: String | nil,
        improvement_action: Deeprails::DefendResponse::ImprovementAction | nil,
        max_retries: Integer | nil,
        modified_at: Time | nil,
        status: Deeprails::DefendResponse::Status | nil,
        success_rate: Float | nil
      }
    end
  end
end
