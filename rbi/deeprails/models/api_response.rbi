# typed: strong

module Deeprails
  module Models
    class APIResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::APIResponse, Deeprails::Internal::AnyHash)
        end

      # Represents whether the request was completed successfully.
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Response payload for creating or updating a monitor.
      sig { returns(T.nilable(Deeprails::APIResponse::Data)) }
      attr_reader :data

      sig { params(data: Deeprails::APIResponse::Data::OrHash).void }
      attr_writer :data

      # The accompanying message for the request. Includes error details when
      # applicable.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Response wrapper for operations returning a MonitorResponse.
      sig do
        params(
          success: T::Boolean,
          data: Deeprails::APIResponse::Data::OrHash,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents whether the request was completed successfully.
        success:,
        # Response payload for creating or updating a monitor.
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
            data: Deeprails::APIResponse::Data,
            message: String
          }
        )
      end
      def to_hash
      end

      class Data < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Deeprails::APIResponse::Data, Deeprails::Internal::AnyHash)
          end

        # A unique monitor ID.
        sig { returns(String) }
        attr_accessor :monitor_id

        # Name of the monitor.
        sig { returns(String) }
        attr_accessor :name

        # The time the monitor was created in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Description of the monitor.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        sig do
          returns(
            T.nilable(Deeprails::APIResponse::Data::MonitorStatus::TaggedSymbol)
          )
        end
        attr_reader :monitor_status

        sig do
          params(
            monitor_status:
              Deeprails::APIResponse::Data::MonitorStatus::OrSymbol
          ).void
        end
        attr_writer :monitor_status

        # The most recent time the monitor was modified in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # User ID of the user who created the monitor.
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        # Response payload for creating or updating a monitor.
        sig do
          params(
            monitor_id: String,
            name: String,
            created_at: Time,
            description: String,
            monitor_status:
              Deeprails::APIResponse::Data::MonitorStatus::OrSymbol,
            updated_at: Time,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique monitor ID.
          monitor_id:,
          # Name of the monitor.
          name:,
          # The time the monitor was created in UTC.
          created_at: nil,
          # Description of the monitor.
          description: nil,
          # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
          # longer record and evaluate events.
          monitor_status: nil,
          # The most recent time the monitor was modified in UTC.
          updated_at: nil,
          # User ID of the user who created the monitor.
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              monitor_id: String,
              name: String,
              created_at: Time,
              description: String,
              monitor_status:
                Deeprails::APIResponse::Data::MonitorStatus::TaggedSymbol,
              updated_at: Time,
              user_id: String
            }
          )
        end
        def to_hash
        end

        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        module MonitorStatus
          extend Deeprails::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Deeprails::APIResponse::Data::MonitorStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Deeprails::APIResponse::Data::MonitorStatus::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Deeprails::APIResponse::Data::MonitorStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Deeprails::APIResponse::Data::MonitorStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
