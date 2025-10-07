# typed: strong

module Deeprails
  module Models
    class WorkflowEventResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::WorkflowEventResponse, Deeprails::Internal::AnyHash)
        end

      # A unique workflow event ID.
      sig { returns(String) }
      attr_accessor :event_id

      # Workflow ID associated with the event.
      sig { returns(String) }
      attr_accessor :workflow_id

      # Count of improvement attempts for the event. If greater than one then all
      # previous improvement attempts failed.
      sig { returns(T.nilable(Integer)) }
      attr_reader :attempt_number

      sig { params(attempt_number: Integer).void }
      attr_writer :attempt_number

      # A unique evaluation ID associated with this event. Every event has one or more
      # evaluation attempts.
      sig { returns(T.nilable(String)) }
      attr_reader :evaluation_id

      sig { params(evaluation_id: String).void }
      attr_writer :evaluation_id

      # `False` if evaluation passed all of the guardrail metrics, `True` if evaluation
      # failed any of the guardrail metrics.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :filtered

      sig { params(filtered: T::Boolean).void }
      attr_writer :filtered

      # Response payload for workflow event operations.
      sig do
        params(
          event_id: String,
          workflow_id: String,
          attempt_number: Integer,
          evaluation_id: String,
          filtered: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique workflow event ID.
        event_id:,
        # Workflow ID associated with the event.
        workflow_id:,
        # Count of improvement attempts for the event. If greater than one then all
        # previous improvement attempts failed.
        attempt_number: nil,
        # A unique evaluation ID associated with this event. Every event has one or more
        # evaluation attempts.
        evaluation_id: nil,
        # `False` if evaluation passed all of the guardrail metrics, `True` if evaluation
        # failed any of the guardrail metrics.
        filtered: nil
      )
      end

      sig do
        override.returns(
          {
            event_id: String,
            workflow_id: String,
            attempt_number: Integer,
            evaluation_id: String,
            filtered: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
