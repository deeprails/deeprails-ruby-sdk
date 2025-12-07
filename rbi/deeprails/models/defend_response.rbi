# typed: strong

module Deeprails
  module Models
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::DefendResponse, Deeprails::Internal::AnyHash)
        end

      # Mapping of guardrail metric names to tolerance values. Values can be strings
      # (`low`, `medium`, `high`) for automatic tolerance levels.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
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
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::OrSymbol
            ]
        ).void
      end
      attr_writer :automatic_hallucination_tolerance_levels

      # The time the workflow was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Mapping of guardrail metric names to threshold values. Values can be floating
      # point numbers (0.0-1.0) for custom thresholds.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :custom_hallucination_threshold_values

      sig { params(custom_hallucination_threshold_values: T.anything).void }
      attr_writer :custom_hallucination_threshold_values

      # A description for the workflow, to help you remember what that workflow means to
      # your organization.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events.
      sig do
        returns(
          T.nilable(Deeprails::DefendResponse::ImprovementAction::TaggedSymbol)
        )
      end
      attr_reader :improvement_action

      sig do
        params(
          improvement_action:
            Deeprails::DefendResponse::ImprovementAction::OrSymbol
        ).void
      end
      attr_writer :improvement_action

      # A human-readable name for the workflow that will correspond to it's workflow ID.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Deeprails::DefendResponse::Stats)) }
      attr_reader :stats

      sig { params(stats: Deeprails::DefendResponse::Stats::OrHash).void }
      attr_writer :stats

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      sig do
        returns(T.nilable(Deeprails::DefendResponse::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Deeprails::DefendResponse::Status::OrSymbol).void }
      attr_writer :status

      # Type of thresholds used to evaluate the event.
      sig do
        returns(
          T.nilable(Deeprails::DefendResponse::ThresholdType::TaggedSymbol)
        )
      end
      attr_reader :threshold_type

      sig do
        params(
          threshold_type: Deeprails::DefendResponse::ThresholdType::OrSymbol
        ).void
      end
      attr_writer :threshold_type

      # The most recent time the workflow was updated in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A unique workflow ID used to identify the workflow in other endpoints.
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_id

      sig { params(workflow_id: String).void }
      attr_writer :workflow_id

      sig do
        params(
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          created_at: Time,
          custom_hallucination_threshold_values: T.anything,
          description: String,
          improvement_action:
            Deeprails::DefendResponse::ImprovementAction::OrSymbol,
          name: String,
          stats: Deeprails::DefendResponse::Stats::OrHash,
          status: Deeprails::DefendResponse::Status::OrSymbol,
          threshold_type: Deeprails::DefendResponse::ThresholdType::OrSymbol,
          updated_at: Time,
          workflow_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Mapping of guardrail metric names to tolerance values. Values can be strings
        # (`low`, `medium`, `high`) for automatic tolerance levels.
        automatic_hallucination_tolerance_levels: nil,
        # The time the workflow was created in UTC.
        created_at: nil,
        # Mapping of guardrail metric names to threshold values. Values can be floating
        # point numbers (0.0-1.0) for custom thresholds.
        custom_hallucination_threshold_values: nil,
        # A description for the workflow, to help you remember what that workflow means to
        # your organization.
        description: nil,
        # The action used to improve outputs that fail one or more guardrail metrics for
        # the workflow events.
        improvement_action: nil,
        # A human-readable name for the workflow that will correspond to it's workflow ID.
        name: nil,
        stats: nil,
        # Status of the selected workflow. May be `inactive` or `active`. Inactive
        # workflows will not accept events.
        status: nil,
        # Type of thresholds used to evaluate the event.
        threshold_type: nil,
        # The most recent time the workflow was updated in UTC.
        updated_at: nil,
        # A unique workflow ID used to identify the workflow in other endpoints.
        workflow_id: nil
      )
      end

      sig do
        override.returns(
          {
            automatic_hallucination_tolerance_levels:
              T::Hash[
                Symbol,
                Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
              ],
            created_at: Time,
            custom_hallucination_threshold_values: T.anything,
            description: String,
            improvement_action:
              Deeprails::DefendResponse::ImprovementAction::TaggedSymbol,
            name: String,
            stats: Deeprails::DefendResponse::Stats,
            status: Deeprails::DefendResponse::Status::TaggedSymbol,
            threshold_type:
              Deeprails::DefendResponse::ThresholdType::TaggedSymbol,
            updated_at: Time,
            workflow_id: String
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
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendResponse::ImprovementAction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGEN =
          T.let(
            :regen,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )
        DO_NOTHING =
          T.let(
            :do_nothing,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::ImprovementAction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Stats < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::DefendResponse::Stats,
              Deeprails::Internal::AnyHash
            )
          end

        # Number of AI outputs that failed the guardrails.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_below_threshold

        sig { params(outputs_below_threshold: Integer).void }
        attr_writer :outputs_below_threshold

        # Number of AI outputs that were improved.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_improved

        sig { params(outputs_improved: Integer).void }
        attr_writer :outputs_improved

        # Total number of AI outputs processed by the workflow.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_processed

        sig { params(outputs_processed: Integer).void }
        attr_writer :outputs_processed

        sig do
          params(
            outputs_below_threshold: Integer,
            outputs_improved: Integer,
            outputs_processed: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of AI outputs that failed the guardrails.
          outputs_below_threshold: nil,
          # Number of AI outputs that were improved.
          outputs_improved: nil,
          # Total number of AI outputs processed by the workflow.
          outputs_processed: nil
        )
        end

        sig do
          override.returns(
            {
              outputs_below_threshold: Integer,
              outputs_improved: Integer,
              outputs_processed: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Deeprails::DefendResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INACTIVE =
          T.let(:inactive, Deeprails::DefendResponse::Status::TaggedSymbol)
        ACTIVE = T.let(:active, Deeprails::DefendResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Type of thresholds used to evaluate the event.
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendResponse::ThresholdType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOM =
          T.let(:custom, Deeprails::DefendResponse::ThresholdType::TaggedSymbol)
        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::DefendResponse::ThresholdType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::ThresholdType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
