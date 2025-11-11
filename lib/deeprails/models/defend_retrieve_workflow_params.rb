# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_workflow
    class DefendRetrieveWorkflowParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute limit
      #   Limit the number of returned events associated with this workflow. Defaults
      #   to 10.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendRetrieveWorkflowParams} for more details.
      #
      #   @param limit [Integer] Limit the number of returned events associated with this workflow. Defaults to
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
