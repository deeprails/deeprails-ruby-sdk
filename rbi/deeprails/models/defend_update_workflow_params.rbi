# typed: strong

module Deeprails
  module Models
    class DefendUpdateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Deeprails::DefendUpdateWorkflowParams,
            Deeprails::Internal::AnyHash
          )
        end

      # Description for the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Name of the workflow.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          description: String,
          name: String,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description for the workflow.
        description: nil,
        # Name of the workflow.
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            name: String,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
