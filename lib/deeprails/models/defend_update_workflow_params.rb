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

      # @!method initialize(description: nil, name: nil, request_options: {})
      #   @param description [String] Description for the workflow.
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
