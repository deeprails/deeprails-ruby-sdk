# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#create
    class MonitorResponse < Deeprails::Internal::Type::BaseModel
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
      #   @return [Symbol, Deeprails::Models::MonitorResponse::MonitorStatus, nil]
      optional :monitor_status, enum: -> { Deeprails::MonitorResponse::MonitorStatus }

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
      #   {Deeprails::Models::MonitorResponse} for more details.
      #
      #   @param monitor_id [String] A unique monitor ID.
      #
      #   @param name [String] Name of the monitor.
      #
      #   @param created_at [Time] The time the monitor was created in UTC.
      #
      #   @param description [String] Description of the monitor.
      #
      #   @param monitor_status [Symbol, Deeprails::Models::MonitorResponse::MonitorStatus] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
      #
      #   @param updated_at [Time] The most recent time the monitor was modified in UTC.
      #
      #   @param user_id [String] User ID of the user who created the monitor.

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      #
      # @see Deeprails::Models::MonitorResponse#monitor_status
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
