# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#update
    class MonitorUpdateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute description
      #   Description of the monitor.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   Name of the monitor.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorUpdateParams::Status, nil]
      optional :status, enum: -> { Deeprails::MonitorUpdateParams::Status }

      # @!method initialize(description: nil, name: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorUpdateParams} for more details.
      #
      #   @param description [String] Description of the monitor.
      #
      #   @param name [String] Name of the monitor.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorUpdateParams::Status] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module Status
        extend Deeprails::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
