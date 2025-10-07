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

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      sig do
        returns(
          T.nilable(Deeprails::DefendUpdateWorkflowParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Deeprails::DefendUpdateWorkflowParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          description: String,
          name: String,
          type: Deeprails::DefendUpdateWorkflowParams::Type::OrSymbol,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description for the workflow.
        description: nil,
        # Name of the workflow.
        name: nil,
        # Type of thresholds to use for the workflow, either `automatic` or `custom`.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            name: String,
            type: Deeprails::DefendUpdateWorkflowParams::Type::OrSymbol,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      module Type
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendUpdateWorkflowParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::DefendUpdateWorkflowParams::Type::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Deeprails::DefendUpdateWorkflowParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendUpdateWorkflowParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
