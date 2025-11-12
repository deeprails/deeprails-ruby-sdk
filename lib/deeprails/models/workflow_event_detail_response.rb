# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_event
    class WorkflowEventDetailResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute evaluation_history
      #   History of evaluations for the event.
      #
      #   @return [Array<Deeprails::Models::WorkflowEventDetailResponse::EvaluationHistory>]
      required :evaluation_history,
               -> { Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::EvaluationHistory] }

      # @!attribute evaluation_result
      #   Evaluation result consisting of average scores and rationales for each of the
      #   evaluated guardrail metrics.
      #
      #   @return [Hash{Symbol=>Object}]
      required :evaluation_result, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

      # @!attribute event_id
      #   A unique workflow event ID.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_status
      #   Status of the event.
      #
      #   @return [Symbol, Deeprails::Models::WorkflowEventDetailResponse::EventStatus]
      required :event_status, enum: -> { Deeprails::WorkflowEventDetailResponse::EventStatus }

      # @!attribute filtered
      #   Whether the event was filtered and requires improvement.
      #
      #   @return [Boolean]
      required :filtered, Deeprails::Internal::Type::Boolean

      # @!attribute improved_model_output
      #   Improved model output after improvement tool was applied and each metric passed
      #   evaluation.
      #
      #   @return [String]
      required :improved_model_output, String

      # @!attribute improvement_action
      #   Type of improvement action used to improve the event.
      #
      #   @return [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ImprovementAction]
      required :improvement_action, enum: -> { Deeprails::WorkflowEventDetailResponse::ImprovementAction }

      # @!attribute improvement_tool_status
      #   Status of the improvement tool used to improve the event.
      #
      #   @return [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ImprovementToolStatus, nil]
      required :improvement_tool_status,
               enum: -> { Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus },
               nil?: true

      # @!attribute threshold_type
      #   Type of thresholds used to evaluate the event.
      #
      #   @return [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ThresholdType]
      required :threshold_type, enum: -> { Deeprails::WorkflowEventDetailResponse::ThresholdType }

      # @!attribute workflow_id
      #   Workflow ID associated with the event.
      #
      #   @return [String]
      required :workflow_id, String

      # @!attribute automatic_hallucination_tolerance_levels
      #   Mapping of guardrail metric names to tolerance values. Values are strings
      #   (`low`, `medium`, `high`) representing automatic tolerance levels.
      #
      #   @return [Hash{Symbol=>Symbol, Deeprails::Models::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel}, nil]
      optional :automatic_hallucination_tolerance_levels,
               -> { Deeprails::Internal::Type::HashOf[enum: Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel] }

      # @!attribute capabilities
      #   Extended AI capabilities available to the event, if any. Can be `web_search`
      #   and/or `file_search`.
      #
      #   @return [Array<Deeprails::Models::WorkflowEventDetailResponse::Capability>, nil]
      optional :capabilities,
               -> { Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::Capability] }

      # @!attribute custom_hallucination_threshold_values
      #   Mapping of guardrail metric names to threshold values. Values are floating point
      #   numbers (0.0-1.0) representing custom thresholds.
      #
      #   @return [Hash{Symbol=>Float}, nil]
      optional :custom_hallucination_threshold_values, Deeprails::Internal::Type::HashOf[Float]

      # @!attribute files
      #   List of files available to the event, if any. Will only be present if
      #   `file_search` is enabled.
      #
      #   @return [Array<Deeprails::Models::WorkflowEventDetailResponse::File>, nil]
      optional :files, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::WorkflowEventDetailResponse::File] }

      # @!method initialize(evaluation_history:, evaluation_result:, event_id:, event_status:, filtered:, improved_model_output:, improvement_action:, improvement_tool_status:, threshold_type:, workflow_id:, automatic_hallucination_tolerance_levels: nil, capabilities: nil, custom_hallucination_threshold_values: nil, files: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::WorkflowEventDetailResponse} for more details.
      #
      #   @param evaluation_history [Array<Deeprails::Models::WorkflowEventDetailResponse::EvaluationHistory>] History of evaluations for the event.
      #
      #   @param evaluation_result [Hash{Symbol=>Object}] Evaluation result consisting of average scores and rationales for each of the ev
      #
      #   @param event_id [String] A unique workflow event ID.
      #
      #   @param event_status [Symbol, Deeprails::Models::WorkflowEventDetailResponse::EventStatus] Status of the event.
      #
      #   @param filtered [Boolean] Whether the event was filtered and requires improvement.
      #
      #   @param improved_model_output [String] Improved model output after improvement tool was applied and each metric passed
      #
      #   @param improvement_action [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ImprovementAction] Type of improvement action used to improve the event.
      #
      #   @param improvement_tool_status [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ImprovementToolStatus, nil] Status of the improvement tool used to improve the event.
      #
      #   @param threshold_type [Symbol, Deeprails::Models::WorkflowEventDetailResponse::ThresholdType] Type of thresholds used to evaluate the event.
      #
      #   @param workflow_id [String] Workflow ID associated with the event.
      #
      #   @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel}] Mapping of guardrail metric names to tolerance values. Values are strings (`low`
      #
      #   @param capabilities [Array<Deeprails::Models::WorkflowEventDetailResponse::Capability>] Extended AI capabilities available to the event, if any. Can be `web_search` and
      #
      #   @param custom_hallucination_threshold_values [Hash{Symbol=>Float}] Mapping of guardrail metric names to threshold values. Values are floating point
      #
      #   @param files [Array<Deeprails::Models::WorkflowEventDetailResponse::File>] List of files available to the event, if any. Will only be present if `file_sear

      class EvaluationHistory < Deeprails::Internal::Type::BaseModel
        # @!attribute attempt
        #
        #   @return [String, nil]
        optional :attempt, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute evaluation_result
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :evaluation_result, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

        # @!attribute evaluation_status
        #
        #   @return [String, nil]
        optional :evaluation_status, String

        # @!attribute evaluation_total_cost
        #
        #   @return [Float, nil]
        optional :evaluation_total_cost, Float

        # @!attribute guardrail_metrics
        #
        #   @return [Array<String>, nil]
        optional :guardrail_metrics, Deeprails::Internal::Type::ArrayOf[String]

        # @!attribute model_input
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :model_input, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

        # @!attribute model_output
        #
        #   @return [String, nil]
        optional :model_output, String

        # @!attribute modified_at
        #
        #   @return [Time, nil]
        optional :modified_at, Time

        # @!attribute nametag
        #
        #   @return [String, nil]
        optional :nametag, String

        # @!attribute progress
        #
        #   @return [Integer, nil]
        optional :progress, Integer

        # @!attribute run_mode
        #
        #   @return [String, nil]
        optional :run_mode, String

        # @!method initialize(attempt: nil, created_at: nil, error_message: nil, evaluation_result: nil, evaluation_status: nil, evaluation_total_cost: nil, guardrail_metrics: nil, model_input: nil, model_output: nil, modified_at: nil, nametag: nil, progress: nil, run_mode: nil)
        #   @param attempt [String]
        #   @param created_at [Time]
        #   @param error_message [String]
        #   @param evaluation_result [Hash{Symbol=>Object}]
        #   @param evaluation_status [String]
        #   @param evaluation_total_cost [Float]
        #   @param guardrail_metrics [Array<String>]
        #   @param model_input [Hash{Symbol=>Object}]
        #   @param model_output [String]
        #   @param modified_at [Time]
        #   @param nametag [String]
        #   @param progress [Integer]
        #   @param run_mode [String]
      end

      # Status of the event.
      #
      # @see Deeprails::Models::WorkflowEventDetailResponse#event_status
      module EventStatus
        extend Deeprails::Internal::Type::Enum

        IN_PROGRESS = :"In Progress"
        COMPLETED = :Completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of improvement action used to improve the event.
      #
      # @see Deeprails::Models::WorkflowEventDetailResponse#improvement_action
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGEN = :regen
        FIXIT = :fixit
        DO_NOTHING = :do_nothing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the improvement tool used to improve the event.
      #
      # @see Deeprails::Models::WorkflowEventDetailResponse#improvement_tool_status
      module ImprovementToolStatus
        extend Deeprails::Internal::Type::Enum

        IMPROVED = :improved
        FAILED_ON_MAX_RETRIES = :"failed on max retries"
        IMPROVEMENT_REQUIRED = :improvement_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of thresholds used to evaluate the event.
      #
      # @see Deeprails::Models::WorkflowEventDetailResponse#threshold_type
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        CUSTOM = :custom
        AUTOMATIC = :automatic

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        LOW = :low
        MEDIUM = :medium
        HIGH = :high

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Capability < Deeprails::Internal::Type::BaseModel
        # @!attribute capability
        #
        #   @return [String, nil]
        optional :capability, String

        # @!method initialize(capability: nil)
        #   @param capability [String]
      end

      class File < Deeprails::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String, nil]
        optional :file_id, String

        # @!attribute file_name
        #
        #   @return [String, nil]
        optional :file_name, String

        # @!attribute file_size
        #
        #   @return [Integer, nil]
        optional :file_size, Integer

        # @!method initialize(file_id: nil, file_name: nil, file_size: nil)
        #   @param file_id [String]
        #   @param file_name [String]
        #   @param file_size [Integer]
      end
    end
  end
end
