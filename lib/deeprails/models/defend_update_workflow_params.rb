# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#update_workflow
    class DefendUpdateWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute description
      #   Description for the workflow.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   Name of the workflow.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute type
      #   Type of thresholds to use for the workflow, either `automatic` or `custom`.
      #
      #   @return [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::Type, nil]
      optional :type, enum: -> { Deeprails::DefendUpdateWorkflowParams::Type }

      # @!method initialize(description: nil, name: nil, type: nil, request_options: {})
      #   @param description [String] Description for the workflow.
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param type [Symbol, Deeprails::Models::DefendUpdateWorkflowParams::Type] Type of thresholds to use for the workflow, either `automatic` or `custom`.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      # Type of thresholds to use for the workflow, either `automatic` or `custom`.
      module Type
        extend Deeprails::Internal::Type::Enum

        AUTOMATIC = :automatic
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
