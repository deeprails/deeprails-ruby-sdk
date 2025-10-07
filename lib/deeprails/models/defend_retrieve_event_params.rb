# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_event
    class DefendRetrieveEventParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute workflow_id
      #
      #   @return [String]
      required :workflow_id, String

      # @!method initialize(workflow_id:, request_options: {})
      #   @param workflow_id [String]
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
