# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#create
    class APIResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute success
      #   Represents whether the request was completed successfully.
      #
      #   @return [Boolean]
      required :success, Deeprails::Internal::Type::Boolean

      # @!attribute data
      #   Response payload for creating or updating a monitor.
      #
      #   @return [Deeprails::Models::APIResponse::Data, nil]
      optional :data, -> { Deeprails::APIResponse::Data }

      # @!attribute message
      #   The accompanying message for the request. Includes error details when
      #   applicable.
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(success:, data: nil, message: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::APIResponse} for more details.
      #
      #   Response wrapper for operations returning a MonitorResponse.
      #
      #   @param success [Boolean] Represents whether the request was completed successfully.
      #
      #   @param data [Deeprails::Models::APIResponse::Data] Response payload for creating or updating a monitor.
      #
      #   @param message [String] The accompanying message for the request. Includes error details when applicable

      # @see Deeprails::Models::APIResponse#data
      class Data < Deeprails::Internal::Type::BaseModel
        # @!attribute monitor_id
        #   A unique monitor ID.
        #
        #   @return [String]
        required :monitor_id, String

        # @!attribute name
        #   Name of the monitor.
        #
        #   @return [String]
        required :name, String

        # @!attribute created_at
        #   The time the monitor was created in UTC.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute description
        #   Description of the monitor.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute monitor_status
        #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        #   longer record and evaluate events.
        #
        #   @return [Symbol, Deeprails::Models::APIResponse::Data::MonitorStatus, nil]
        optional :monitor_status, enum: -> { Deeprails::APIResponse::Data::MonitorStatus }

        # @!attribute updated_at
        #   The most recent time the monitor was modified in UTC.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute user_id
        #   User ID of the user who created the monitor.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(monitor_id:, name:, created_at: nil, description: nil, monitor_status: nil, updated_at: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Deeprails::Models::APIResponse::Data} for more details.
        #
        #   Response payload for creating or updating a monitor.
        #
        #   @param monitor_id [String] A unique monitor ID.
        #
        #   @param name [String] Name of the monitor.
        #
        #   @param created_at [Time] The time the monitor was created in UTC.
        #
        #   @param description [String] Description of the monitor.
        #
        #   @param monitor_status [Symbol, Deeprails::Models::APIResponse::Data::MonitorStatus] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
        #
        #   @param updated_at [Time] The most recent time the monitor was modified in UTC.
        #
        #   @param user_id [String] User ID of the user who created the monitor.

        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        #
        # @see Deeprails::Models::APIResponse::Data#monitor_status
        module MonitorStatus
          extend Deeprails::Internal::Type::Enum

          ACTIVE = :active
          INACTIVE = :inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
