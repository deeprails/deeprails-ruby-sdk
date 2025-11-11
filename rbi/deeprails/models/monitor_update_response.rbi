# typed: strong

module Deeprails
  module Models
    class MonitorUpdateResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorUpdateResponse, Deeprails::Internal::AnyHash)
        end

      # The time the monitor was last modified in UTC.
      sig { returns(Time) }
      attr_accessor :modified_at

      # A unique monitor ID.
      sig { returns(String) }
      attr_accessor :monitor_id

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig { returns(Deeprails::MonitorUpdateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          modified_at: Time,
          monitor_id: String,
          status: Deeprails::MonitorUpdateResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the monitor was last modified in UTC.
        modified_at:,
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
            modified_at: Time,
            monitor_id: String,
            status: Deeprails::MonitorUpdateResponse::Status::TaggedSymbol
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
            T.all(Symbol, Deeprails::MonitorUpdateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Deeprails::MonitorUpdateResponse::Status::TaggedSymbol)
        INACTIVE =
          T.let(
            :inactive,
            Deeprails::MonitorUpdateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::MonitorUpdateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
