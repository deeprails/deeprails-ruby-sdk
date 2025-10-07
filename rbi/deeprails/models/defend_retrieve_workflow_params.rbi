# typed: strong

module Deeprails
  module Models
    class DefendRetrieveWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Deeprails::DefendRetrieveWorkflowParams,
            Deeprails::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Deeprails::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Deeprails::RequestOptions }) }
      def to_hash
      end
    end
  end
end
