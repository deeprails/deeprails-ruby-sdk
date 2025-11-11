# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#retrieve_event
    class MonitorRetrieveEventParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute monitor_id
      #
      #   @return [String]
      required :monitor_id, String

      # @!method initialize(monitor_id:, request_options: {})
      #   @param monitor_id [String]
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
