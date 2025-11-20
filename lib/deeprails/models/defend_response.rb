# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_workflow
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute automatic_hallucination_tolerance_levels
      #   Mapping of guardrail metric names to tolerance values. Values can be strings
      #   (`low`, `medium`, `high`) for automatic tolerance levels.
      #
      #   @return [Hash{Symbol=>Symbol, Deeprails::Models::DefendResponse::AutomaticHallucinationToleranceLevel}]
      required :automatic_hallucination_tolerance_levels,
               -> { Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel] }

      # @!attribute capabilities
      #   Extended AI capabilities available to the event, if any. Can be `web_search`
      #   and/or `file_search`.
      #
      #   @return [Array<Deeprails::Models::DefendResponse::Capability>]
      required :capabilities, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::Capability] }

      # @!attribute created_at
      #   The time the workflow was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute custom_hallucination_threshold_values
      #   Mapping of guardrail metric names to threshold values. Values can be floating
      #   point numbers (0.0-1.0) for custom thresholds.
      #
      #   @return [Hash{Symbol=>Float}]
      required :custom_hallucination_threshold_values, Deeprails::Internal::Type::HashOf[Float]

      # @!attribute description
      #   A description for the workflow, to help you remember what that workflow means to
      #   your organization.
      #
      #   @return [String]
      required :description, String

      # @!attribute events
      #   An array of events associated with this workflow.
      #
      #   @return [Array<Deeprails::Models::DefendResponse::Event>]
      required :events, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::Event] }

      # @!attribute files
      #   List of files associated with the workflow. If this is not empty, models can
      #   search these files when performing evaluations or remediations
      #
      #   @return [Array<Deeprails::Models::DefendResponse::File>]
      required :files, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::File] }

      # @!attribute name
      #   A human-readable name for the workflow that will correspond to it's workflow ID.
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   Status of the selected workflow. May be `inactive` or `active`. Inactive
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::Status]
      required :status, enum: -> { Deeprails::DefendResponse::Status }

      # @!attribute threshold_type
      #   Type of thresholds used to evaluate the event.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ThresholdType]
      required :threshold_type, enum: -> { Deeprails::DefendResponse::ThresholdType }

      # @!attribute updated_at
      #   The most recent time the workflow was updated in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute workflow_id
      #   A unique workflow ID used to identify the workflow in other endpoints.
      #
      #   @return [String]
      required :workflow_id, String

      # @!attribute improvement_action
      #   The action used to improve outputs that fail one or more guardrail metrics for
      #   the workflow events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ImprovementAction, nil]
      optional :improvement_action, enum: -> { Deeprails::DefendResponse::ImprovementAction }

      # @!attribute stats
      #
      #   @return [Deeprails::Models::DefendResponse::Stats, nil]
      optional :stats, -> { Deeprails::DefendResponse::Stats }

      # @!method initialize(automatic_hallucination_tolerance_levels:, capabilities:, created_at:, custom_hallucination_threshold_values:, description:, events:, files:, name:, status:, threshold_type:, updated_at:, workflow_id:, improvement_action: nil, stats: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendResponse} for more details.
      #
      #   @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::DefendResponse::AutomaticHallucinationToleranceLevel}] Mapping of guardrail metric names to tolerance values. Values can be strings (`l
      #
      #   @param capabilities [Array<Deeprails::Models::DefendResponse::Capability>] Extended AI capabilities available to the event, if any. Can be `web_search` and
      #
      #   @param created_at [Time] The time the workflow was created in UTC.
      #
      #   @param custom_hallucination_threshold_values [Hash{Symbol=>Float}] Mapping of guardrail metric names to threshold values. Values can be floating po
      #
      #   @param description [String] A description for the workflow, to help you remember what that workflow means to
      #
      #   @param events [Array<Deeprails::Models::DefendResponse::Event>] An array of events associated with this workflow.
      #
      #   @param files [Array<Deeprails::Models::DefendResponse::File>] List of files associated with the workflow. If this is not empty, models can sea
      #
      #   @param name [String] A human-readable name for the workflow that will correspond to it's workflow ID.
      #
      #   @param status [Symbol, Deeprails::Models::DefendResponse::Status] Status of the selected workflow. May be `inactive` or `active`. Inactive workf
      #
      #   @param threshold_type [Symbol, Deeprails::Models::DefendResponse::ThresholdType] Type of thresholds used to evaluate the event.
      #
      #   @param updated_at [Time] The most recent time the workflow was updated in UTC.
      #
      #   @param workflow_id [String] A unique workflow ID used to identify the workflow in other endpoints.
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendResponse::ImprovementAction] The action used to improve outputs that fail one or more guardrail metrics for t
      #
      #   @param stats [Deeprails::Models::DefendResponse::Stats]

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

      class Event < Deeprails::Internal::Type::BaseModel
        # @!attribute evaluations
        #   An array of evaluations for this event.
        #
        #   @return [Array<Deeprails::Models::DefendResponse::Event::Evaluation>, nil]
        optional :evaluations,
                 -> { Deeprails::Internal::Type::ArrayOf[Deeprails::DefendResponse::Event::Evaluation] }

        # @!attribute event_id
        #   A unique workflow event ID.
        #
        #   @return [String, nil]
        optional :event_id, String

        # @!attribute improved_model_output
        #   Improved model output after improvement tool was applied.
        #
        #   @return [String, nil]
        optional :improved_model_output, String

        # @!attribute improvement_tool_status
        #   Status of the improvement tool used to improve the event.
        #
        #   @return [String, nil]
        optional :improvement_tool_status, String

        # @!method initialize(evaluations: nil, event_id: nil, improved_model_output: nil, improvement_tool_status: nil)
        #   @param evaluations [Array<Deeprails::Models::DefendResponse::Event::Evaluation>] An array of evaluations for this event.
        #
        #   @param event_id [String] A unique workflow event ID.
        #
        #   @param improved_model_output [String] Improved model output after improvement tool was applied.
        #
        #   @param improvement_tool_status [String] Status of the improvement tool used to improve the event.

        class Evaluation < Deeprails::Internal::Type::BaseModel
          # @!attribute attempt
          #   The attempt number or identifier for this evaluation.
          #
          #   @return [String, nil]
          optional :attempt, String

          # @!attribute created_at
          #   The time the evaluation was created in UTC.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute error_message
          #   Error message if the evaluation failed.
          #
          #   @return [String, nil]
          optional :error_message, String

          # @!attribute evaluation_result
          #   The result of the evaluation.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :evaluation_result, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

          # @!attribute evaluation_status
          #   Status of the evaluation.
          #
          #   @return [String, nil]
          optional :evaluation_status, String

          # @!attribute evaluation_total_cost
          #   Total cost of the evaluation.
          #
          #   @return [Float, nil]
          optional :evaluation_total_cost, Float

          # @!attribute guardrail_metrics
          #   An array of guardrail metrics evaluated.
          #
          #   @return [Array<String>, nil]
          optional :guardrail_metrics, Deeprails::Internal::Type::ArrayOf[String]

          # @!attribute model_input
          #   The model input used for the evaluation.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :model_input, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

          # @!attribute model_output
          #   The model output that was evaluated.
          #
          #   @return [String, nil]
          optional :model_output, String

          # @!attribute modified_at
          #   The time the evaluation was last modified in UTC.
          #
          #   @return [Time, nil]
          optional :modified_at, Time

          # @!attribute nametag
          #   An optional tag for the evaluation.
          #
          #   @return [String, nil]
          optional :nametag, String

          # @!attribute progress
          #   Evaluation progress (0-100).
          #
          #   @return [Integer, nil]
          optional :progress, Integer

          # @!attribute run_mode
          #   Run mode used for the evaluation.
          #
          #   @return [String, nil]
          optional :run_mode, String

          # @!method initialize(attempt: nil, created_at: nil, error_message: nil, evaluation_result: nil, evaluation_status: nil, evaluation_total_cost: nil, guardrail_metrics: nil, model_input: nil, model_output: nil, modified_at: nil, nametag: nil, progress: nil, run_mode: nil)
          #   @param attempt [String] The attempt number or identifier for this evaluation.
          #
          #   @param created_at [Time] The time the evaluation was created in UTC.
          #
          #   @param error_message [String] Error message if the evaluation failed.
          #
          #   @param evaluation_result [Hash{Symbol=>Object}] The result of the evaluation.
          #
          #   @param evaluation_status [String] Status of the evaluation.
          #
          #   @param evaluation_total_cost [Float] Total cost of the evaluation.
          #
          #   @param guardrail_metrics [Array<String>] An array of guardrail metrics evaluated.
          #
          #   @param model_input [Hash{Symbol=>Object}] The model input used for the evaluation.
          #
          #   @param model_output [String] The model output that was evaluated.
          #
          #   @param modified_at [Time] The time the evaluation was last modified in UTC.
          #
          #   @param nametag [String] An optional tag for the evaluation.
          #
          #   @param progress [Integer] Evaluation progress (0-100).
          #
          #   @param run_mode [String] Run mode used for the evaluation.
        end
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

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      #
      # @see Deeprails::Models::DefendResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        INACTIVE = :inactive
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of thresholds used to evaluate the event.
      #
      # @see Deeprails::Models::DefendResponse#threshold_type
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        CUSTOM = :custom
        AUTOMATIC = :automatic

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events.
      #
      # @see Deeprails::Models::DefendResponse#improvement_action
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGEN = :regen
        FIXIT = :fixit
        DO_NOTHING = :do_nothing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Deeprails::Models::DefendResponse#stats
      class Stats < Deeprails::Internal::Type::BaseModel
        # @!attribute outputs_below_threshold
        #   Number of AI outputs that failed the guardrails.
        #
        #   @return [Integer, nil]
        optional :outputs_below_threshold, Integer

        # @!attribute outputs_improved
        #   Number of AI outputs that were improved.
        #
        #   @return [Integer, nil]
        optional :outputs_improved, Integer

        # @!attribute outputs_processed
        #   Total number of AI outputs processed by the workflow.
        #
        #   @return [Integer, nil]
        optional :outputs_processed, Integer

        # @!method initialize(outputs_below_threshold: nil, outputs_improved: nil, outputs_processed: nil)
        #   @param outputs_below_threshold [Integer] Number of AI outputs that failed the guardrails.
        #
        #   @param outputs_improved [Integer] Number of AI outputs that were improved.
        #
        #   @param outputs_processed [Integer] Total number of AI outputs processed by the workflow.
      end
    end
  end
end
