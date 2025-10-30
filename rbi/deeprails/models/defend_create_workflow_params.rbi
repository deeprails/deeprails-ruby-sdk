# typed: strong

module Deeprails
  module Models
    class DefendCreateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Deeprails::DefendCreateWorkflowParams,
            Deeprails::Internal::AnyHash
          )
        end

      # The action used to improve outputs that fail one or guardrail metrics for the
      # workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the user's
      # input prompt with minor induced variance. FixIt attempts to directly address the
      # shortcomings of the output using the guardrail failure rationale. Do Nothing
      # does not attempt any improvement.
      sig do
        returns(
          Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol
        )
      end
      attr_accessor :improvement_action

      # Name of the workflow.
      sig { returns(String) }
      attr_accessor :name

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      sig { returns(Deeprails::DefendCreateWorkflowParams::Type::OrSymbol) }
      attr_accessor :type

      # Mapping of guardrail metrics to hallucination tolerance levels (either `low`,
      # `medium`, or `high`). Possible metrics are `completeness`,
      # `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
      # `comprehensive_safety`.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
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
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ]
        ).void
      end
      attr_writer :automatic_hallucination_tolerance_levels

      # Mapping of guardrail metrics to floating point threshold values. Possible
      # metrics are `correctness`, `completeness`, `instruction_adherence`,
      # `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
      sig { returns(T.nilable(T::Hash[Symbol, Float])) }
      attr_reader :custom_hallucination_threshold_values

      sig do
        params(
          custom_hallucination_threshold_values: T::Hash[Symbol, Float]
        ).void
      end
      attr_writer :custom_hallucination_threshold_values

      # Description for the workflow.
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

      # Max. number of improvement action retries until a given event passes the
      # guardrails. Defaults to 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_improvement_attempts

      sig { params(max_improvement_attempts: Integer).void }
      attr_writer :max_improvement_attempts

      # Whether to enable web search for this workflow's evaluations. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :web_search

      sig { params(web_search: T::Boolean).void }
      attr_writer :web_search

      sig do
        params(
          improvement_action:
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol,
          name: String,
          type: Deeprails::DefendCreateWorkflowParams::Type::OrSymbol,
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          custom_hallucination_threshold_values: T::Hash[Symbol, Float],
          description: String,
          file_search: T::Array[String],
          max_improvement_attempts: Integer,
          web_search: T::Boolean,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The action used to improve outputs that fail one or guardrail metrics for the
        # workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the user's
        # input prompt with minor induced variance. FixIt attempts to directly address the
        # shortcomings of the output using the guardrail failure rationale. Do Nothing
        # does not attempt any improvement.
        improvement_action:,
        # Name of the workflow.
        name:,
        # Type of thresholds to use for the workflow, either `automatic` or `custom`.
        # Automatic thresholds are assigned internally after the user specifies a
        # qualitative tolerance for the metrics, whereas custom metrics allow the user to
        # set the threshold for each metric as a floating point number between 0.0 and
        # 1.0.
        type:,
        # Mapping of guardrail metrics to hallucination tolerance levels (either `low`,
        # `medium`, or `high`). Possible metrics are `completeness`,
        # `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
        # `comprehensive_safety`.
        automatic_hallucination_tolerance_levels: nil,
        # Mapping of guardrail metrics to floating point threshold values. Possible
        # metrics are `correctness`, `completeness`, `instruction_adherence`,
        # `context_adherence`, `ground_truth_adherence`, or `comprehensive_safety`.
        custom_hallucination_threshold_values: nil,
        # Description for the workflow.
        description: nil,
        # An array of file IDs to search in the workflow's evaluations. Files must be
        # uploaded via the DeepRails API first.
        file_search: nil,
        # Max. number of improvement action retries until a given event passes the
        # guardrails. Defaults to 10.
        max_improvement_attempts: nil,
        # Whether to enable web search for this workflow's evaluations. Defaults to false.
        web_search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            improvement_action:
              Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol,
            name: String,
            type: Deeprails::DefendCreateWorkflowParams::Type::OrSymbol,
            automatic_hallucination_tolerance_levels:
              T::Hash[
                Symbol,
                Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::OrSymbol
              ],
            custom_hallucination_threshold_values: T::Hash[Symbol, Float],
            description: String,
            file_search: T::Array[String],
            max_improvement_attempts: Integer,
            web_search: T::Boolean,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The action used to improve outputs that fail one or guardrail metrics for the
      # workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the user's
      # input prompt with minor induced variance. FixIt attempts to directly address the
      # shortcomings of the output using the guardrail failure rationale. Do Nothing
      # does not attempt any improvement.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendCreateWorkflowParams::ImprovementAction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGEN =
          T.let(
            :regen,
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::TaggedSymbol
          )
        DO_NOTHING =
          T.let(
            :do_nothing,
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendCreateWorkflowParams::ImprovementAction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      # Automatic thresholds are assigned internally after the user specifies a
      # qualitative tolerance for the metrics, whereas custom metrics allow the user to
      # set the threshold for each metric as a floating point number between 0.0 and
      # 1.0.
      module Type
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendCreateWorkflowParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::DefendCreateWorkflowParams::Type::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Deeprails::DefendCreateWorkflowParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendCreateWorkflowParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendCreateWorkflowParams::AutomaticHallucinationToleranceLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
