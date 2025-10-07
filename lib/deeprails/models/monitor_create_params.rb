# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#create
    class MonitorCreateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of the new monitor.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   Description of the new monitor.
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(name:, description: nil, request_options: {})
      #   @param name [String] Name of the new monitor.
      #
      #   @param description [String] Description of the new monitor.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
