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

      # Name of the monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig do
        returns(T.nilable(Deeprails::MonitorUpdateParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Deeprails::MonitorUpdateParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          description: String,
          name: String,
          status: Deeprails::MonitorUpdateParams::Status::OrSymbol,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description of the monitor.
        description: nil,
        # Name of the monitor.
        name: nil,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            name: String,
            status: Deeprails::MonitorUpdateParams::Status::OrSymbol,
            request_options: Deeprails::RequestOptions
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
          T.type_alias { T.all(Symbol, Deeprails::MonitorUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Deeprails::MonitorUpdateParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Deeprails::MonitorUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::MonitorUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
