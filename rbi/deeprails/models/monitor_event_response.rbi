# typed: strong

module Deeprails
  module Models
    class MonitorEventResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorEventResponse, Deeprails::Internal::AnyHash)
        end

      # A unique evaluation ID associated with this event.
      sig { returns(String) }
      attr_accessor :evaluation_id

      # A unique monitor event ID.
      sig { returns(String) }
      attr_accessor :event_id

      # Monitor ID associated with this event.
      sig { returns(String) }
      attr_accessor :monitor_id

      # The time the monitor event was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig do
        params(
          evaluation_id: String,
          event_id: String,
          monitor_id: String,
          created_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique evaluation ID associated with this event.
        evaluation_id:,
        # A unique monitor event ID.
        event_id:,
        # Monitor ID associated with this event.
        monitor_id:,
        # The time the monitor event was created in UTC.
        created_at: nil
      )
      end

      sig do
        override.returns(
          {
            evaluation_id: String,
            event_id: String,
            monitor_id: String,
            created_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
