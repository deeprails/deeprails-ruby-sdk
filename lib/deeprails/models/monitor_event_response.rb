# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#submit_event
    class MonitorEventResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute event_id
      #   A unique monitor event ID.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute monitor_id
      #   Monitor ID associated with this event.
      #
      #   @return [String]
      required :monitor_id, String

      # @!attribute created_at
      #   The time the monitor event was created in UTC.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!method initialize(event_id:, monitor_id:, created_at: nil)
      #   @param event_id [String] A unique monitor event ID.
      #
      #   @param monitor_id [String] Monitor ID associated with this event.
      #
      #   @param created_at [Time] The time the monitor event was created in UTC.
    end
  end
end
