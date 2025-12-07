# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#create
    class MonitorCreateResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute created_at
      #   The time the monitor was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute monitor_id
      #   A unique monitor ID.
      #
      #   @return [String]
      required :monitor_id, String

      # @!attribute status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorCreateResponse::Status]
      required :status, enum: -> { Deeprails::MonitorCreateResponse::Status }

      # @!method initialize(created_at:, monitor_id:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorCreateResponse} for more details.
      #
      #   @param created_at [Time] The time the monitor was created in UTC.
      #
      #   @param monitor_id [String] A unique monitor ID.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorCreateResponse::Status] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      #
      # @see Deeprails::Models::MonitorCreateResponse#status
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
