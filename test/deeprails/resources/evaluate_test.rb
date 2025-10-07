# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::EvaluateTest < Deeprails::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @deeprails.evaluate.create(
        model_input: {user_prompt: "user_prompt"},
        model_output: "model_output",
        run_mode: :precision_plus
      )

    assert_pattern do
      response => Deeprails::Evaluation
    end

    assert_pattern do
      response => {
        eval_id: String,
        evaluation_status: Deeprails::Evaluation::EvaluationStatus,
        model_input: Deeprails::Evaluation::ModelInput,
        model_output: String,
        run_mode: Deeprails::Evaluation::RunMode,
        created_at: Time | nil,
        end_timestamp: Time | nil,
        error_message: String | nil,
        error_timestamp: Time | nil,
        evaluation_result: ^(Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]) | nil,
        evaluation_total_cost: Float | nil,
        guardrail_metrics: ^(Deeprails::Internal::Type::ArrayOf[enum: Deeprails::Evaluation::GuardrailMetric]) | nil,
        model_used: String | nil,
        modified_at: Time | nil,
        nametag: String | nil,
        progress: Integer | nil,
        start_timestamp: Time | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @deeprails.evaluate.retrieve("eval_id")

    assert_pattern do
      response => Deeprails::Evaluation
    end

    assert_pattern do
      response => {
        eval_id: String,
        evaluation_status: Deeprails::Evaluation::EvaluationStatus,
        model_input: Deeprails::Evaluation::ModelInput,
        model_output: String,
        run_mode: Deeprails::Evaluation::RunMode,
        created_at: Time | nil,
        end_timestamp: Time | nil,
        error_message: String | nil,
        error_timestamp: Time | nil,
        evaluation_result: ^(Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]) | nil,
        evaluation_total_cost: Float | nil,
        guardrail_metrics: ^(Deeprails::Internal::Type::ArrayOf[enum: Deeprails::Evaluation::GuardrailMetric]) | nil,
        model_used: String | nil,
        modified_at: Time | nil,
        nametag: String | nil,
        progress: Integer | nil,
        start_timestamp: Time | nil
      }
    end
  end
end
