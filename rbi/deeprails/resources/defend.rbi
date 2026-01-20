# typed: strong

module Deeprails
  module Resources
    class Defend
      # Use this endpoint to create a new guardrail workflow by specifying guardrail
      # thresholds, an improvement action, and optional extended capabilities.
      sig do
        params(
          improvement_action:
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol,
          name: String,
          threshold_type:
            Deeprails::DefendCreateWorkflowParams::ThresholdType::OrSymbol,
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          context_awareness: T::Boolean,
          custom_hallucination_threshold_values: T::Hash[Symbol, Float],
          description: String,
          file_search: T::Array[String],
          max_improvement_attempts: Integer,
          web_search: T::Boolean,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::DefendCreateResponse)
      end
      def create_workflow(
        # The action used to improve outputs that fail one or more guardrail metrics for
        # the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
        # user's input prompt with minor induced variance. FixIt attempts to directly
        # address the shortcomings of the output using the guardrail failure rationale. Do
        # Nothing does not attempt any improvement.
        improvement_action:,
        # Name of the workflow.
        name:,
        # Type of thresholds to use for the workflow, either `automatic` or `custom`.
        # Automatic thresholds are assigned internally after the user specifies a
        # qualitative tolerance for the metrics, whereas custom metrics allow the user to
        # set the threshold for each metric as a floating point number between 0.0 and
        # 1.0.
        threshold_type:,
        # Mapping of guardrail metrics to hallucination tolerance levels (either `low`,
        # `medium`, or `high`). Possible metrics are `completeness`,
        # `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
        # `comprehensive_safety`.
        automatic_hallucination_tolerance_levels: nil,
        # Context includes any structured information that directly relates to the model’s
        # input and expected output—e.g., the recent turn-by-turn history between an AI
        # tutor and a student, facts or state passed through an agentic workflow, or other
        # domain-specific signals your system already knows and wants the model to
        # condition on. This field determines whether to enable context awareness for this
        # workflow's evaluations. Defaults to false.
        context_awareness: nil,
        # Mapping of guardrail metrics to floating point threshold values. Possible
        # metrics are `correctness`, `completeness`, `instruction_adherence`,
        # `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
        custom_hallucination_threshold_values: nil,
        # Description for the workflow.
        description: nil,
        # An array of file IDs to search in the workflow's evaluations. Files must be
        # uploaded via the DeepRails API first.
        file_search: nil,
        # Max. number of improvement action attempts until a given event passes the
        # guardrails. Defaults to 10.
        max_improvement_attempts: nil,
        # Whether to enable web search for this workflow's evaluations. Defaults to false.
        web_search: nil,
        request_options: {}
      )
      end

      # Use this endpoint to retrieve a specific event of a guardrail workflow
      sig do
        params(
          event_id: String,
          workflow_id: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::WorkflowEventDetailResponse)
      end
      def retrieve_event(
        # The ID of the requested workflow event.
        event_id,
        # The ID of the workflow associated with the event.
        workflow_id:,
        request_options: {}
      )
      end

      # Use this endpoint to retrieve the details for a specific defend workflow
      sig do
        params(
          workflow_id: String,
          limit: Integer,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::DefendResponse)
      end
      def retrieve_workflow(
        # The ID of the workflow to retrieve.
        workflow_id,
        # Limit the number of returned events associated with this workflow. Defaults
        # to 10.
        limit: nil,
        request_options: {}
      )
      end

      # Use this endpoint to create a new event for a guardrail workflow with real-time
      # streaming feedback via Server-Sent Events (SSE).
      sig do
        params(
          workflow_id: String,
          model_input: T::Hash[Symbol, T.anything],
          model_output: String,
          model_used: String,
          run_mode:
            Deeprails::DefendSubmitAndStreamEventParams::RunMode::OrSymbol,
          stream: T::Boolean,
          nametag: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::Internal::Stream[String])
      end
      def submit_and_stream_event_streaming(
        # Path param: The ID of the workflow to create the event for.
        workflow_id,
        # Body param: The input provided to the model (e.g., prompt, messages).
        model_input:,
        # Body param: The output generated by the model to be evaluated.
        model_output:,
        # Body param: The model that generated the output (e.g., "gpt-4", "claude-3").
        model_used:,
        # Body param: The evaluation run mode. Streaming only supports fast, precision,
        # and precision_codex.
        run_mode:,
        # Query param: Enable SSE streaming for real-time token feedback. Only supported
        # for single-model run modes (fast, precision, precision_codex).
        stream: nil,
        # Body param: Optional tag to identify this event.
        nametag: nil,
        request_options: {}
      )
      end

      # Use this endpoint to submit a model input and output pair to a workflow for
      # evaluation
      sig do
        params(
          workflow_id: String,
          model_input: Deeprails::DefendSubmitEventParams::ModelInput::OrHash,
          model_output: String,
          model_used: String,
          run_mode: Deeprails::DefendSubmitEventParams::RunMode::OrSymbol,
          nametag: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::WorkflowEventResponse)
      end
      def submit_event(
        # Workflow ID associated with this event.
        workflow_id,
        # A dictionary of inputs sent to the LLM to generate output. The dictionary must
        # contain a `user_prompt` field. For the ground_truth_adherence guardrail metric,
        # `ground_truth` should be provided.
        model_input:,
        # Output generated by the LLM to be evaluated.
        model_output:,
        # Model ID used to generate the output, like `gpt-4o` or `o3`.
        model_used:,
        # Run mode for the workflow event. The run mode allows the user to optimize for
        # speed, accuracy, and cost by determining which models are used to evaluate the
        # event. Available run modes include `precision_plus_codex`, `precision_plus`,
        # `precision`, `smart`, and `economy`. Defaults to `smart`.
        run_mode:,
        # An optional, user-defined tag for the event.
        nametag: nil,
        request_options: {}
      )
      end

      # Use this endpoint to update an existing defend workflow if its details change.
      sig do
        params(
          workflow_id: String,
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          context_awareness: T::Boolean,
          custom_hallucination_threshold_values: T::Hash[Symbol, Float],
          description: String,
          file_search: T::Array[String],
          improvement_action:
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::OrSymbol,
          max_improvement_attempts: Integer,
          name: String,
          threshold_type:
            Deeprails::DefendUpdateWorkflowParams::ThresholdType::OrSymbol,
          web_search: T::Boolean,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::DefendUpdateResponse)
      end
      def update_workflow(
        # The ID of the workflow to edit.
        workflow_id,
        # New mapping of guardrail metrics to hallucination tolerance levels (either
        # `low`, `medium`, or `high`) to be used when `threshold_type` is set to
        # `automatic`. Possible metrics are `completeness`, `instruction_adherence`,
        # `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
        automatic_hallucination_tolerance_levels: nil,
        # Whether to enable context awareness for this workflow's evaluations.
        context_awareness: nil,
        # New mapping of guardrail metrics to floating point threshold values to be used
        # when `threshold_type` is set to `custom`. Possible metrics are `correctness`,
        # `completeness`, `instruction_adherence`, `context_adherence`,
        # `ground_truth_adherence`, or `comprehensive_safety`.
        custom_hallucination_threshold_values: nil,
        # New description for the workflow.
        description: nil,
        # An array of file IDs to search in the workflow's evaluations. Files must be
        # uploaded via the DeepRails API first.
        file_search: nil,
        # The new action used to improve outputs that fail one or more guardrail metrics
        # for the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs
        # the user's input prompt with minor induced variance. FixIt attempts to directly
        # address the shortcomings of the output using the guardrail failure rationale. Do
        # Nothing does not attempt any improvement.
        improvement_action: nil,
        # Max. number of improvement action attempts until a given event passes the
        # guardrails. Defaults to 10.
        max_improvement_attempts: nil,
        # New name for the workflow.
        name: nil,
        # New type of thresholds to use for the workflow, either `automatic` or `custom`.
        # Automatic thresholds are assigned internally after the user specifies a
        # qualitative tolerance for the metrics, whereas custom metrics allow the user to
        # set the threshold for each metric as a floating point number between 0.0 and
        # 1.0.
        threshold_type: nil,
        # Whether to enable web search for this workflow's evaluations.
        web_search: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Deeprails::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
