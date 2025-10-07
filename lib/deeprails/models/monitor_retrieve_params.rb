# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#retrieve
    class MonitorRetrieveParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute limit
      #   Limit the returned events associated with this monitor. Defaults to 10.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(limit: nil, request_options: {})
      #   @param limit [Integer] Limit the returned events associated with this monitor. Defaults to 10.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
