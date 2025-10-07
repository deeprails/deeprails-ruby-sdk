# typed: strong

module Deeprails
  module Models
    class MonitorRetrieveParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorRetrieveParams, Deeprails::Internal::AnyHash)
        end

      # Limit the returned events associated with this monitor. Defaults to 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          limit: Integer,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Limit the returned events associated with this monitor. Defaults to 10.
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { limit: Integer, request_options: Deeprails::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
