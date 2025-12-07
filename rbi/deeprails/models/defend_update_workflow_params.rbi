# typed: strong

module Deeprails
  module Models
    class DefendUpdateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Deeprails::DefendUpdateWorkflowParams,
            Deeprails::Internal::AnyHash
          )
        end

      # New mapping of guardrail metrics to hallucination tolerance levels (either
      # `low`, `medium`, or `high`) to be used when `threshold_type` is set to
      # `automatic`. Possible metrics are `completeness`, `instruction_adherence`,
      # `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ]
          )
        )
      end
      attr_reader :automatic_hallucination_tolerance_levels

      sig do
        params(
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ]
        ).void
      end
      attr_writer :automatic_hallucination_tolerance_levels

      # Whether to enable context awareness for this workflow's evaluations.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :context_awareness

      sig { params(context_awareness: T::Boolean).void }
      attr_writer :context_awareness

      # New mapping of guardrail metrics to floating point threshold values to be used
      # when `threshold_type` is set to `custom`. Possible metrics are `correctness`,
      # `completeness`, `instruction_adherence`, `context_adherence`,
      # `ground_truth_adherence`, or `comprehensive_safety`.
      sig { returns(T.nilable(T::Hash[Symbol, Float])) }
      attr_reader :custom_hallucination_threshold_values

      sig do
        params(
          custom_hallucination_threshold_values: T::Hash[Symbol, Float]
        ).void
      end
      attr_writer :custom_hallucination_threshold_values

      # New description for the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # An array of file IDs to search in the workflow's evaluations. Files must be
      # uploaded via the DeepRails API first.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :file_search

      sig { params(file_search: T::Array[String]).void }
      attr_writer :file_search

      # The new action used to improve outputs that fail one or more guardrail metrics
      # for the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs
      # the user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
      sig do
        returns(
          T.nilable(
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::OrSymbol
          )
        )
      end
      attr_reader :improvement_action

      sig do
        params(
          improvement_action:
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::OrSymbol
        ).void
      end
      attr_writer :improvement_action

      # Max. number of improvement action attempts until a given event passes the
      # guardrails. Defaults to 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_improvement_attempts

      sig { params(max_improvement_attempts: Integer).void }
      attr_writer :max_improvement_attempts

      # New name for the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # New type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      sig do
        returns(
          T.nilable(
            Deeprails::DefendUpdateWorkflowParams::ThresholdType::OrSymbol
          )
        )
      end
      attr_reader :threshold_type

      sig do
        params(
          threshold_type:
            Deeprails::DefendUpdateWorkflowParams::ThresholdType::OrSymbol
        ).void
      end
      attr_writer :threshold_type

      # Whether to enable web search for this workflow's evaluations.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :web_search

      sig { params(web_search: T::Boolean).void }
      attr_writer :web_search

      sig do
        params(
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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendUpdateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The new action used to improve outputs that fail one or more guardrail metrics
      # for the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs
      # the user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendUpdateWorkflowParams::ImprovementAction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGEN =
          T.let(
            :regen,
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::TaggedSymbol
          )
        DO_NOTHING =
          T.let(
            :do_nothing,
            Deeprails::DefendUpdateWorkflowParams::ImprovementAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendUpdateWorkflowParams::ImprovementAction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # New type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendUpdateWorkflowParams::ThresholdType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::DefendUpdateWorkflowParams::ThresholdType::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Deeprails::DefendUpdateWorkflowParams::ThresholdType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendUpdateWorkflowParams::ThresholdType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
