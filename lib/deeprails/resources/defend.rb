# frozen_string_literal: true

module Deeprails
  module Resources
    class Defend
      # Some parameter documentations has been truncated, see
      # {Deeprails::Models::DefendCreateWorkflowParams} for more details.
      #
      # Use this endpoint to create a new guardrail workflow by specifying guardrail
      # thresholds, an improvement action, and optional extended capabilities.
      #
      # @overload create_workflow(improvement_action:, name:, threshold_type:, automatic_hallucination_tolerance_levels: nil, custom_hallucination_threshold_values: nil, description: nil, file_search: nil, max_improvement_attempts: nil, web_search: nil, request_options: {})
      #
      # @param improvement_action [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ImprovementAction] The action used to improve outputs that fail one or more guardrail metrics for t
      #
      # @param name [String] Name of the workflow.
      #
      # @param threshold_type [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ThresholdType] Type of thresholds to use for the workflow, either `automatic` or `custom`. Aut
      #
      # @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel}] Mapping of guardrail metrics to hallucination tolerance levels
      #
      # @param custom_hallucination_threshold_values [Hash{Symbol=>Float}] Mapping of guardrail metrics to floating point threshold values. Possible metric
      #
      # @param description [String] Description for the workflow.
      #
      # @param file_search [Array<String>] An array of file IDs to search in the workflow's evaluations. Files must be uplo
      #
      # @param max_improvement_attempts [Integer] Max. number of improvement action attempts until a given event passes the guardr
      #
      # @param web_search [Boolean] Whether to enable web search for this workflow's evaluations. Defaults to false.
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::DefendCreateResponse]
      #
      # @see Deeprails::Models::DefendCreateWorkflowParams
      def create_workflow(params)
        parsed, options = Deeprails::DefendCreateWorkflowParams.dump_request(params)
        @client.request(
          method: :post,
          path: "defend",
          body: parsed,
          model: Deeprails::DefendCreateResponse,
          options: options
        )
      end

      # Use this endpoint to retrieve a specific event of a guardrail workflow
      #
      # @overload retrieve_event(event_id, workflow_id:, request_options: {})
      #
      # @param event_id [String] The ID of the requested workflow event.
      #
      # @param workflow_id [String] The ID of the workflow associated with the event.
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::WorkflowEventDetailResponse]
      #
      # @see Deeprails::Models::DefendRetrieveEventParams
      def retrieve_event(event_id, params)
        parsed, options = Deeprails::DefendRetrieveEventParams.dump_request(params)
        workflow_id =
          parsed.delete(:workflow_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["defend/%1$s/events/%2$s", workflow_id, event_id],
          model: Deeprails::WorkflowEventDetailResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Deeprails::Models::DefendRetrieveWorkflowParams} for more details.
      #
      # Use this endpoint to retrieve the details for a specific defend workflow
      #
      # @overload retrieve_workflow(workflow_id, limit: nil, request_options: {})
      #
      # @param workflow_id [String] The ID of the workflow to retrieve.
      #
      # @param limit [Integer] Limit the number of returned events associated with this workflow. Defaults to
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::DefendResponse]
      #
      # @see Deeprails::Models::DefendRetrieveWorkflowParams
      def retrieve_workflow(workflow_id, params = {})
        parsed, options = Deeprails::DefendRetrieveWorkflowParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["defend/%1$s", workflow_id],
          query: parsed,
          model: Deeprails::DefendResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Deeprails::Models::DefendSubmitEventParams} for more details.
      #
      # Use this endpoint to submit a model input and output pair to a workflow for
      # evaluation
      #
      # @overload submit_event(workflow_id, model_input:, model_output:, model_used:, run_mode:, nametag: nil, request_options: {})
      #
      # @param workflow_id [String] Workflow ID associated with this event.
      #
      # @param model_input [Deeprails::Models::DefendSubmitEventParams::ModelInput] A dictionary of inputs sent to the LLM to generate output. The dictionary must c
      #
      # @param model_output [String] Output generated by the LLM to be evaluated.
      #
      # @param model_used [String] Model ID used to generate the output, like `gpt-4o` or `o3`.
      #
      # @param run_mode [Symbol, Deeprails::Models::DefendSubmitEventParams::RunMode] Run mode for the workflow event. The run mode allows the user to optimize for s
      #
      # @param nametag [String] An optional, user-defined tag for the event.
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::WorkflowEventResponse]
      #
      # @see Deeprails::Models::DefendSubmitEventParams
      def submit_event(workflow_id, params)
        parsed, options = Deeprails::DefendSubmitEventParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["defend/%1$s/events", workflow_id],
          body: parsed,
          model: Deeprails::WorkflowEventResponse,
          options: options
        )
      end

      # Use this endpoint to update an existing defend workflow if its details change.
      #
      # @overload update_workflow(workflow_id, description: nil, name: nil, request_options: {})
      #
      # @param workflow_id [String] The ID of the workflow to edit.
      #
      # @param description [String] Description for the workflow.
      #
      # @param name [String] Name of the workflow.
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::DefendUpdateResponse]
      #
      # @see Deeprails::Models::DefendUpdateWorkflowParams
      def update_workflow(workflow_id, params = {})
        parsed, options = Deeprails::DefendUpdateWorkflowParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["defend/%1$s", workflow_id],
          body: parsed,
          model: Deeprails::DefendUpdateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Deeprails::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
