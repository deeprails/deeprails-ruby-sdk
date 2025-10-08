# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#submit_event
    class MonitorSubmitEventResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute success
      #   Represents whether the request was completed successfully.
      #
      #   @return [Boolean]
      required :success, Deeprails::Internal::Type::Boolean

      # @!attribute data
      #
      #   @return [Deeprails::Models::MonitorSubmitEventResponse::Data, nil]
      optional :data, -> { Deeprails::Models::MonitorSubmitEventResponse::Data }

      # @!attribute message
      #   The accompanying message for the request. Includes error details when
      #   applicable.
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(success:, data: nil, message: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorSubmitEventResponse} for more details.
      #
      #   Response wrapper for operations returning a MonitorEventResponse.
      #
      #   @param success [Boolean] Represents whether the request was completed successfully.
      #
      #   @param data [Deeprails::Models::MonitorSubmitEventResponse::Data]
      #
      #   @param message [String] The accompanying message for the request. Includes error details when applicable

      # @see Deeprails::Models::MonitorSubmitEventResponse#data
      class Data < Deeprails::Internal::Type::BaseModel
        # @!attribute evaluation_id
        #   A unique evaluation ID associated with this event.
        #
        #   @return [String]
        required :evaluation_id, String

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

        # @!method initialize(evaluation_id:, event_id:, monitor_id:, created_at: nil)
        #   @param evaluation_id [String] A unique evaluation ID associated with this event.
        #
        #   @param event_id [String] A unique monitor event ID.
        #
        #   @param monitor_id [String] Monitor ID associated with this event.
        #
        #   @param created_at [Time] The time the monitor event was created in UTC.
      end
    end
  end
end
