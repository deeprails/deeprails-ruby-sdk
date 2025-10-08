# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#create_workflow
    class DefendCreateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute improvement_action
      #   The action used to improve outputs that fail one or guardrail metrics for the
      #   workflow events. May be `regenerate`, `fixit`, or null which represents “do
      #   nothing”. Regenerate runs the user's input prompt with minor induced variance.
      #   Fixit attempts to directly address the shortcomings of the output using the
      #   guardrail failure rationale. Do nothing does not attempt any improvement.
      #
      #   @return [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ImprovementAction, nil]
      required :improvement_action,
               enum: -> { Deeprails::DefendCreateWorkflowParams::ImprovementAction },
               nil?: true

      # @!attribute metrics
      #   Mapping of guardrail metrics to floating point threshold values. If the workflow
      #   type is automatic, only the metric names are used (`automatic_tolerance`
      #   determines thresholds). Possible metrics are `correctness`, `completeness`,
      #   `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
      #   `comprehensive_safety`.
      #
      #   @return [Hash{Symbol=>Float}]
      required :metrics, Deeprails::Internal::Type::HashOf[Float]

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

      # @!attribute automatic_tolerance
      #   Hallucination tolerance for automatic workflows; may be `low`, `medium`, or
      #   `high`. Ignored if `type` is `custom`.
      #
      #   @return [Symbol, Deeprails::Models::DefendCreateWorkflowParams::AutomaticTolerance, nil]
      optional :automatic_tolerance, enum: -> { Deeprails::DefendCreateWorkflowParams::AutomaticTolerance }

      # @!attribute description
      #   Description for the workflow.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute max_retries
      #   Max. number of improvement action retries until a given event passes the
      #   guardrails. Defaults to 10.
      #
      #   @return [Integer, nil]
      optional :max_retries, Integer

      # @!method initialize(improvement_action:, metrics:, name:, type:, automatic_tolerance: nil, description: nil, max_retries: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendCreateWorkflowParams} for more details.
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendCreateWorkflowParams::ImprovementAction, nil] The action used to improve outputs that fail one or guardrail metrics for the wo
      #
      #   @param metrics [Hash{Symbol=>Float}] Mapping of guardrail metrics to floating point threshold values. If the workflo
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param type [Symbol, Deeprails::Models::DefendCreateWorkflowParams::Type] Type of thresholds to use for the workflow, either `automatic` or `custom`. Aut
      #
      #   @param automatic_tolerance [Symbol, Deeprails::Models::DefendCreateWorkflowParams::AutomaticTolerance] Hallucination tolerance for automatic workflows; may be `low`, `medium`, or `hig
      #
      #   @param description [String] Description for the workflow.
      #
      #   @param max_retries [Integer] Max. number of improvement action retries until a given event passes the guardra
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      # The action used to improve outputs that fail one or guardrail metrics for the
      # workflow events. May be `regenerate`, `fixit`, or null which represents “do
      # nothing”. Regenerate runs the user's input prompt with minor induced variance.
      # Fixit attempts to directly address the shortcomings of the output using the
      # guardrail failure rationale. Do nothing does not attempt any improvement.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGENERATE = :regenerate
        FIXIT = :fixit

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

      # Hallucination tolerance for automatic workflows; may be `low`, `medium`, or
      # `high`. Ignored if `type` is `custom`.
      module AutomaticTolerance
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
