# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#create_workflow
    class DefendCreateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute improvement_action
      #   The action used to improve outputs that fail one or guardrail metrics for the
      #   workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the user's
      #   input prompt with minor induced variance. FixIt attempts to directly address the
      #   shortcomings of the output using the guardrail failure rationale. Do Nothing
      #   does not attempt any improvement.
      #
      #   @return [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ImprovementAction]
      required :improvement_action, enum: -> { Deeprails::DefendCreateWorkflowParams::ImprovementAction }

      # @!attribute name
      #   Name of the workflow.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   Type of thresholds to use for the workflow, either `automatic` or `custom`.
      #   Automatic thresholds are assigned internally after the user specifies a
      #   qualitative tolerance for the metrics, whereas custom metrics allow the user to
      #   set the threshold for each metric as a floating point number between 0.0 and
      #   1.0.
      #
      #   @return [Symbol, Deeprails::Models::DefendCreateWorkflowParams::Type]
      required :type, enum: -> { Deeprails::DefendCreateWorkflowParams::Type }

      # @!attribute automatic_hallucination_tolerance_levels
      #   Mapping of guardrail metrics to hallucination tolerance levels (either `low`,
      #   `medium`, or `high`). Possible metrics are `completeness`,
      #   `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
      #   `comprehensive_safety`.
      #
      #   @return [Hash{Symbol=>Symbol, Deeprails::Models::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel}, nil]
      optional :automatic_hallucination_tolerance_levels,
               -> { Deeprails::Internal::Type::HashOf[enum: Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel] }

      # @!attribute custom_hallucination_threshold_values
      #   Mapping of guardrail metrics to floating point threshold values. Possible
      #   metrics are `correctness`, `completeness`, `instruction_adherence`,
      #   `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
      #
      #   @return [Hash{Symbol=>Float}, nil]
      optional :custom_hallucination_threshold_values, Deeprails::Internal::Type::HashOf[Float]

      # @!attribute description
      #   Description for the workflow.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute max_improvement_attempt
      #   Max. number of improvement action retries until a given event passes the
      #   guardrails. Defaults to 10.
      #
      #   @return [Integer, nil]
      optional :max_improvement_attempt, Integer

      # @!method initialize(improvement_action:, name:, type:, automatic_hallucination_tolerance_levels: nil, custom_hallucination_threshold_values: nil, description: nil, max_improvement_attempt: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendCreateWorkflowParams} for more details.
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ImprovementAction] The action used to improve outputs that fail one or guardrail metrics for the wo
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param type [Symbol, Deeprails::Models::DefendCreateWorkflowParams::Type] Type of thresholds to use for the workflow, either `automatic` or `custom`. Aut
      #
      #   @param automatic_hallucination_tolerance_levels [Hash{Symbol=>Symbol, Deeprails::Models::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel}] Mapping of guardrail metrics to hallucination tolerance levels
      #
      #   @param custom_hallucination_threshold_values [Hash{Symbol=>Float}] Mapping of guardrail metrics to floating point threshold values. Possible metric
      #
      #   @param description [String] Description for the workflow.
      #
      #   @param max_improvement_attempt [Integer] Max. number of improvement action retries until a given event passes the guardra
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      # The action used to improve outputs that fail one or guardrail metrics for the
      # workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the user's
      # input prompt with minor induced variance. FixIt attempts to directly address the
      # shortcomings of the output using the guardrail failure rationale. Do Nothing
      # does not attempt any improvement.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGEN = :regen
        FIXIT = :fixit
        DO_NOTHING = :do_nothing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      module Type
        extend Deeprails::Internal::Type::Enum

        AUTOMATIC = :automatic
        CUSTOM = :custom

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
    end
  end
end
