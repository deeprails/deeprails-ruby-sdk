# typed: strong

module Deeprails
  module Models
    class DefendRetrieveEventParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Deeprails::DefendRetrieveEventParams,
            Deeprails::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :workflow_id

      sig do
        params(
          workflow_id: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(workflow_id:, request_options: {})
      end

      sig do
        override.returns(
          { workflow_id: String, request_options: Deeprails::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
