# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#update
    class MonitorUpdateResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute modified_at
      #   The time the monitor was last modified in UTC.
      #
      #   @return [Time]
      required :modified_at, Time

      # @!attribute monitor_id
      #   A unique monitor ID.
      #
      #   @return [String]
      required :monitor_id, String

      # @!attribute status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorUpdateResponse::Status]
      required :status, enum: -> { Deeprails::MonitorUpdateResponse::Status }

      # @!method initialize(modified_at:, monitor_id:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorUpdateResponse} for more details.
      #
      #   @param modified_at [Time] The time the monitor was last modified in UTC.
      #
      #   @param monitor_id [String] A unique monitor ID.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorUpdateResponse::Status] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      #
      # @see Deeprails::Models::MonitorUpdateResponse#status
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
