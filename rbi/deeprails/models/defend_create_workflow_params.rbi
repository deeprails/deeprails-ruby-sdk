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
      # workflow events. May be `regenerate`, `fixit`, or null which represents “do
      # nothing”. ReGen runs the user's exact input prompt with minor induced variance.
      # Fixit attempts to directly address the shortcomings of the output using the
      # guardrail failure rationale. Do nothing does not attempt any improvement.
      sig do
        returns(
          T.nilable(
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol
          )
        )
      end
      attr_accessor :improvement_action

      # Mapping of guardrail metrics to floating point threshold values. If the workflow
      # type is automatic, only the metric names are used (`automatic_tolerance`
      # determines thresholds). Possible metrics are `correctness`, `completeness`,
      # `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
      # `comprehensive_safety`.
      sig { returns(T::Hash[Symbol, Float]) }
      attr_accessor :metrics

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

      # Hallucination tolerance for automatic workflows; may be `low`, `medium`, or
      # `high`. Ignored if `type` is `custom`.
      sig do
        returns(
          T.nilable(
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::OrSymbol
          )
        )
      end
      attr_reader :automatic_tolerance

      sig do
        params(
          automatic_tolerance:
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::OrSymbol
        ).void
      end
      attr_writer :automatic_tolerance

      # Description for the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Max. number of improvement action retries until a given event passes the
      # guardrails. Defaults to 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_retries

      sig { params(max_retries: Integer).void }
      attr_writer :max_retries

      sig do
        params(
          improvement_action:
            T.nilable(
              Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol
            ),
          metrics: T::Hash[Symbol, Float],
          name: String,
          type: Deeprails::DefendCreateWorkflowParams::Type::OrSymbol,
          automatic_tolerance:
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::OrSymbol,
          description: String,
          max_retries: Integer,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The action used to improve outputs that fail one or guardrail metrics for the
        # workflow events. May be `regenerate`, `fixit`, or null which represents “do
        # nothing”. ReGen runs the user's exact input prompt with minor induced variance.
        # Fixit attempts to directly address the shortcomings of the output using the
        # guardrail failure rationale. Do nothing does not attempt any improvement.
        improvement_action:,
        # Mapping of guardrail metrics to floating point threshold values. If the workflow
        # type is automatic, only the metric names are used (`automatic_tolerance`
        # determines thresholds). Possible metrics are `correctness`, `completeness`,
        # `instruction_adherence`, `context_adherence`, `ground_truth_adherence`, or
        # `comprehensive_safety`.
        metrics:,
        # Name of the workflow.
        name:,
        # Type of thresholds to use for the workflow, either `automatic` or `custom`.
        # Automatic thresholds are assigned internally after the user specifies a
        # qualitative tolerance for the metrics, whereas custom metrics allow the user to
        # set the threshold for each metric as a floating point number between 0.0 and
        # 1.0.
        type:,
        # Hallucination tolerance for automatic workflows; may be `low`, `medium`, or
        # `high`. Ignored if `type` is `custom`.
        automatic_tolerance: nil,
        # Description for the workflow.
        description: nil,
        # Max. number of improvement action retries until a given event passes the
        # guardrails. Defaults to 10.
        max_retries: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            improvement_action:
              T.nilable(
                Deeprails::DefendCreateWorkflowParams::ImprovementAction::OrSymbol
              ),
            metrics: T::Hash[Symbol, Float],
            name: String,
            type: Deeprails::DefendCreateWorkflowParams::Type::OrSymbol,
            automatic_tolerance:
              Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::OrSymbol,
            description: String,
            max_retries: Integer,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The action used to improve outputs that fail one or guardrail metrics for the
      # workflow events. May be `regenerate`, `fixit`, or null which represents “do
      # nothing”. ReGen runs the user's exact input prompt with minor induced variance.
      # Fixit attempts to directly address the shortcomings of the output using the
      # guardrail failure rationale. Do nothing does not attempt any improvement.
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

        REGENERATE =
          T.let(
            :regenerate,
            Deeprails::DefendCreateWorkflowParams::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
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

      # Hallucination tolerance for automatic workflows; may be `low`, `medium`, or
      # `high`. Ignored if `type` is `custom`.
      module AutomaticTolerance
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendCreateWorkflowParams::AutomaticTolerance
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendCreateWorkflowParams::AutomaticTolerance::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
