# typed: strong

module Deeprails
  module Models
    class MonitorSubmitEventResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Deeprails::Models::MonitorSubmitEventResponse,
            Deeprails::Internal::AnyHash
          )
        end

      # Represents whether the request was completed successfully.
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        returns(T.nilable(Deeprails::Models::MonitorSubmitEventResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Deeprails::Models::MonitorSubmitEventResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # The accompanying message for the request. Includes error details when
      # applicable.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Response wrapper for operations returning a MonitorEventResponse.
      sig do
        params(
          success: T::Boolean,
          data: Deeprails::Models::MonitorSubmitEventResponse::Data::OrHash,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents whether the request was completed successfully.
        success:,
        data: nil,
        # The accompanying message for the request. Includes error details when
        # applicable.
        message: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            data: Deeprails::Models::MonitorSubmitEventResponse::Data,
            message: String
          }
        )
      end
      def to_hash
      end

      class Data < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::Models::MonitorSubmitEventResponse::Data,
              Deeprails::Internal::AnyHash
            )
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
end
