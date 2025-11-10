# typed: strong

module Deeprails
  module Models
    class MonitorCreateResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorCreateResponse, Deeprails::Internal::AnyHash)
        end

      # The time the monitor was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # A unique monitor ID.
      sig { returns(String) }
      attr_accessor :monitor_id

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig { returns(Deeprails::MonitorCreateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          created_at: Time,
          monitor_id: String,
          status: Deeprails::MonitorCreateResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the monitor was created in UTC.
        created_at:,
        # A unique monitor ID.
        monitor_id:,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        status:
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            monitor_id: String,
            status: Deeprails::MonitorCreateResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Deeprails::MonitorCreateResponse::Status::TaggedSymbol)
        INACTIVE =
          T.let(
            :inactive,
            Deeprails::MonitorCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::MonitorCreateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
