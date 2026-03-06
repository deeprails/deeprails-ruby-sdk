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

      sig { returns(String) }
      attr_accessor :workflow_id

      # Limit the number of returned events associated with this workflow. Defaults
      # to 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          workflow_id: String,
          limit: Integer,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        workflow_id:,
        # Limit the number of returned events associated with this workflow. Defaults
        # to 10.
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            workflow_id: String,
            limit: Integer,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
