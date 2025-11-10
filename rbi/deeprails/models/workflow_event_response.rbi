# typed: strong

module Deeprails
  module Models
    class WorkflowEventResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::WorkflowEventResponse, Deeprails::Internal::AnyHash)
        end

      # The time the event was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A unique workflow event ID.
      sig { returns(String) }
      attr_accessor :event_id

      # Status of the event.
      sig { returns(Deeprails::WorkflowEventResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Workflow ID associated with the event.
      sig { returns(String) }
      attr_accessor :workflow_id

      sig do
        params(
          created_at: Time,
          event_id: String,
          status: Deeprails::WorkflowEventResponse::Status::OrSymbol,
          workflow_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the event was created in UTC.
        created_at:,
        # A unique workflow event ID.
        event_id:,
        # Status of the event.
        status:,
        # Workflow ID associated with the event.
        workflow_id:
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            event_id: String,
            status: Deeprails::WorkflowEventResponse::Status::TaggedSymbol,
            workflow_id: String
          }
        )
      end
      def to_hash
      end

      # Status of the event.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::WorkflowEventResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_PROGRESS =
          T.let(
            :"In Progress",
            Deeprails::WorkflowEventResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :Completed,
            Deeprails::WorkflowEventResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::WorkflowEventResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
