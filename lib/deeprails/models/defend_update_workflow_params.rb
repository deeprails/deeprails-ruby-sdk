# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#update_workflow
    class DefendUpdateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute workflow_id
      #
      #   @return [String]
      required :workflow_id, String

      # @!attribute automatic_hallucination_tolerance_levels
      #   New mapping of guardrail metrics to hallucination tolerance levels (either
      #   `low`, `medium`, or `high`) to be used when `threshold_type` is set to
      #   `automatic`. Possible metrics are `completeness`, `instruction_adherence`,
      #   `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
      #
      #   @return [Hash{Symbol=>Symbol, Deeprails::Models::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel}, nil]
      optional :automatic_hallucination_tolerance_levels,
               -> { Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel] }

      # @!attribute context_awareness
      #   Whether to enable context awareness for this workflow's evaluations.
      #
      #   @return [Boolean, nil]
      optional :context_awareness, Deeprails::Internal::Type::Boolean

      # @!attribute custom_hallucination_threshold_values
      #   New mapping of guardrail metrics to floating point threshold values to be used
      #   when `threshold_type` is set to `custom`. Possible metrics are `correctness`,
      #   `completeness`, `instruction_adherence`, `context_adherence`,
      #   `ground_truth_adherence`, or `comprehensive_safety`.
      #
      #   @return [Hash{Symbol=>Float}, nil]
      optional :custom_hallucination_threshold_values, Deeprails::Internal::Type::HashOf[Float]

      # @!attribute description
      #   New description for the workflow.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute file_search
      #   An array of file IDs to search in the workflow's evaluations. Files must be
      #   uploaded via the DeepRails API first.
      #
      #   @return [Array<String>, nil]
      optional :file_search, Deeprails::Internal::Type::ArrayOf[String]

      # @!attribute improvement_action
      #   The new action used to improve outputs that fail one or more guardrail metrics
      #   for the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs
      #   the user's input prompt with minor induced variance. FixIt attempts to directly
      #   address the shortcomings of the output using the guardrail failure rationale. Do
      #   Nothing does not attempt any improvement.
      #
      #   @return [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::ImprovementAction, nil]
      optional :improvement_action, enum: -> { Deeprails::DefendUpdateWorkflowParams::ImprovementAction }

      # @!attribute max_improvement_attempts
      #   Max. number of improvement action attempts until a given event passes the
      #   guardrails. Defaults to 10.
      #
      #   @return [Integer, nil]
      optional :max_improvement_attempts, Integer

      # @!attribute name
      #   New name for the workflow.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute threshold_type
      #   New type of thresholds to use for the workflow, either `automatic` or `custom`.
      #   Automatic thresholds are assigned internally after the user specifies a
      #   qualitative tolerance for the metrics, whereas custom metrics allow the user to
      #   set the threshold for each metric as a floating point number between 0.0 and
      #   1.0.
      #
      #   @return [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::ThresholdType, nil]
      optional :threshold_type, enum: -> { Deeprails::DefendUpdateWorkflowParams::ThresholdType }

      # @!attribute web_search
      #   Whether to enable web search for this workflow's evaluations.
      #
      #   @return [Boolean, nil]
      optional :web_search, Deeprails::Internal::Type::Boolean

      # @!method initialize(workflow_id:, automatic_hallucination_tolerance_levels: nil, context_awareness: nil, custom_hallucination_threshold_values: nil, description: nil, file_search: nil, improvement_action: nil, max_improvement_attempts: nil, name: nil, threshold_type: nil, web_search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendUpdateWorkflowParams} for more details.
      #
      #   @param workflow_id [String]
      #
      #   @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel}] New mapping of guardrail metrics to hallucination tolerance levels
      #
      #   @param context_awareness [Boolean] Whether to enable context awareness for this workflow's evaluations.
      #
      #   @param custom_hallucination_threshold_values [Hash{Symbol=>Float}] New mapping of guardrail metrics to floating point threshold values to be used w
      #
      #   @param description [String] New description for the workflow.
      #
      #   @param file_search [Array<String>] An array of file IDs to search in the workflow's evaluations. Files must be uplo
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::ImprovementAction] The new action used to improve outputs that fail one or more guardrail metrics f
      #
      #   @param max_improvement_attempts [Integer] Max. number of improvement action attempts until a given event passes the guardr
      #
      #   @param name [String] New name for the workflow.
      #
      #   @param threshold_type [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::ThresholdType] New type of thresholds to use for the workflow, either `automatic` or `custom`.
      #
      #   @param web_search [Boolean] Whether to enable web search for this workflow's evaluations.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        LOW = :low
        MEDIUM = :medium
        HIGH = :high

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The new action used to improve outputs that fail one or more guardrail metrics
      # for the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs
      # the user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGEN = :regen
        FIXIT = :fixit
        DO_NOTHING = :do_nothing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # New type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        AUTOMATIC = :automatic
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
