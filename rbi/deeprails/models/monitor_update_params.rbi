# typed: strong

module Deeprails
  module Models
    class MonitorUpdateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorUpdateParams, Deeprails::Internal::AnyHash)
        end

      # Description of the monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig do
        returns(
          T.nilable(Deeprails::MonitorUpdateParams::MonitorStatus::OrSymbol)
        )
      end
      attr_reader :monitor_status

      sig do
        params(
          monitor_status:
            Deeprails::MonitorUpdateParams::MonitorStatus::OrSymbol
        ).void
      end
      attr_writer :monitor_status

      # Name of the monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: String,
          monitor_status:
            Deeprails::MonitorUpdateParams::MonitorStatus::OrSymbol,
          name: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description of the monitor.
        description: nil,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        monitor_status: nil,
        # Name of the monitor.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            monitor_status:
              Deeprails::MonitorUpdateParams::MonitorStatus::OrSymbol,
            name: String,
            request_options: Deeprails::RequestOptions
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
            T.all(Symbol, Deeprails::MonitorUpdateParams::MonitorStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Deeprails::MonitorUpdateParams::MonitorStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Deeprails::MonitorUpdateParams::MonitorStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorUpdateParams::MonitorStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
