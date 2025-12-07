# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_workflow
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute automatic_hallucination_tolerance_levels
      #   Mapping of guardrail metric names to tolerance values. Values can be strings
      #   (`low`, `medium`, `high`) for automatic tolerance levels.
      #
      #   @return [Hash{Symbol=>Symbol, Deeprails::Models::DefendResponse::AutomaticHallucinationToleranceLevel}, nil]
      optional :automatic_hallucination_tolerance_levels,
               -> { Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel] }

      # @!attribute created_at
      #   The time the workflow was created in UTC.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute custom_hallucination_threshold_values
      #   Mapping of guardrail metric names to threshold values. Values can be floating
      #   point numbers (0.0-1.0) for custom thresholds.
      #
      #   @return [Object, nil]
      optional :custom_hallucination_threshold_values, Deeprails::Internal::Type::Unknown

      # @!attribute description
      #   A description for the workflow, to help you remember what that workflow means to
      #   your organization.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute improvement_action
      #   The action used to improve outputs that fail one or more guardrail metrics for
      #   the workflow events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ImprovementAction, nil]
      optional :improvement_action, enum: -> { Deeprails::DefendResponse::ImprovementAction }

      # @!attribute name
      #   A human-readable name for the workflow that will correspond to it's workflow ID.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute stats
      #
      #   @return [Deeprails::Models::DefendResponse::Stats, nil]
      optional :stats, -> { Deeprails::DefendResponse::Stats }

      # @!attribute status
      #   Status of the selected workflow. May be `inactive` or `active`. Inactive
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::Status, nil]
      optional :status, enum: -> { Deeprails::DefendResponse::Status }

      # @!attribute threshold_type
      #   Type of thresholds used to evaluate the event.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ThresholdType, nil]
      optional :threshold_type, enum: -> { Deeprails::DefendResponse::ThresholdType }

      # @!attribute updated_at
      #   The most recent time the workflow was updated in UTC.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute workflow_id
      #   A unique workflow ID used to identify the workflow in other endpoints.
      #
      #   @return [String, nil]
      optional :workflow_id, String

      # @!method initialize(automatic_hallucination_tolerance_levels: nil, created_at: nil, custom_hallucination_threshold_values: nil, description: nil, improvement_action: nil, name: nil, stats: nil, status: nil, threshold_type: nil, updated_at: nil, workflow_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendResponse} for more details.
      #
      #   @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::DefendResponse::AutomaticHallucinationToleranceLevel}] Mapping of guardrail metric names to tolerance values. Values can be strings (`l
      #
      #   @param created_at [Time] The time the workflow was created in UTC.
      #
      #   @param custom_hallucination_threshold_values [Object] Mapping of guardrail metric names to threshold values. Values can be floating po
      #
      #   @param description [String] A description for the workflow, to help you remember what that workflow means to
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendResponse::ImprovementAction] The action used to improve outputs that fail one or more guardrail metrics for t
      #
      #   @param name [String] A human-readable name for the workflow that will correspond to it's workflow ID.
      #
      #   @param stats [Deeprails::Models::DefendResponse::Stats]
      #
      #   @param status [Symbol, Deeprails::Models::DefendResponse::Status] Status of the selected workflow. May be `inactive` or `active`. Inactive workf
      #
      #   @param threshold_type [Symbol, Deeprails::Models::DefendResponse::ThresholdType] Type of thresholds used to evaluate the event.
      #
      #   @param updated_at [Time] The most recent time the workflow was updated in UTC.
      #
      #   @param workflow_id [String] A unique workflow ID used to identify the workflow in other endpoints.

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        LOW = :low
        MEDIUM = :medium
        HIGH = :high

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
    end
  end
end
