# typed: strong

module Deeprails
  module Models
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::DefendResponse, Deeprails::Internal::AnyHash)
        end

      # Name of the workflow.
      sig { returns(String) }
      attr_accessor :name

      # A unique workflow ID.
      sig { returns(String) }
      attr_accessor :workflow_id

      # The time the workflow was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Description for the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
      # user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
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

      # Max. number of improvement action retries until a given event passes the
      # guardrails.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_improvement_attempt

      sig { params(max_improvement_attempt: Integer).void }
      attr_writer :max_improvement_attempt

      # The most recent time the workflow was modified in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :modified_at

      sig { params(modified_at: Time).void }
      attr_writer :modified_at

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      sig do
        returns(T.nilable(Deeprails::DefendResponse::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Deeprails::DefendResponse::Status::OrSymbol).void }
      attr_writer :status

      # Rate of events associated with this workflow that passed evaluation.
      sig { returns(T.nilable(Float)) }
      attr_reader :success_rate

      sig { params(success_rate: Float).void }
      attr_writer :success_rate

      sig do
        params(
          name: String,
          workflow_id: String,
          created_at: Time,
          description: String,
          improvement_action:
            Deeprails::DefendResponse::ImprovementAction::OrSymbol,
          max_improvement_attempt: Integer,
          modified_at: Time,
          status: Deeprails::DefendResponse::Status::OrSymbol,
          success_rate: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the workflow.
        name:,
        # A unique workflow ID.
        workflow_id:,
        # The time the workflow was created in UTC.
        created_at: nil,
        # Description for the workflow.
        description: nil,
        # The action used to improve outputs that fail one or more guardrail metrics for
        # the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
        # user's input prompt with minor induced variance. FixIt attempts to directly
        # address the shortcomings of the output using the guardrail failure rationale. Do
        # Nothing does not attempt any improvement.
        improvement_action: nil,
        # Max. number of improvement action retries until a given event passes the
        # guardrails.
        max_improvement_attempt: nil,
        # The most recent time the workflow was modified in UTC.
        modified_at: nil,
        # Status of the selected workflow. May be `inactive` or `active`. Inactive
        # workflows will not accept events.
        status: nil,
        # Rate of events associated with this workflow that passed evaluation.
        success_rate: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            workflow_id: String,
            created_at: Time,
            description: String,
            improvement_action:
              Deeprails::DefendResponse::ImprovementAction::TaggedSymbol,
            max_improvement_attempt: Integer,
            modified_at: Time,
            status: Deeprails::DefendResponse::Status::TaggedSymbol,
            success_rate: Float
          }
        )
      end
      def to_hash
      end

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
      # user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
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
    end
  end
end
