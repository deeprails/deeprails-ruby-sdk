# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#retrieve
    class MonitorRetrieveParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute limit
      #   Limit the number of returned evaluations associated with this monitor. Defaults
      #   to 10.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorRetrieveParams} for more details.
      #
      #   @param limit [Integer] Limit the number of returned evaluations associated with this monitor. Defaults
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
