# typed: strong

module Deeprails
  module Models
    class MonitorCreateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorCreateParams, Deeprails::Internal::AnyHash)
        end

      # Name of the new monitor.
      sig { returns(String) }
      attr_accessor :name

      # Description of the new monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          name: String,
          description: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the new monitor.
        name:,
        # Description of the new monitor.
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            description: String,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
