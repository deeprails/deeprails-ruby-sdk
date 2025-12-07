# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#submit_event
    class WorkflowEventResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute created_at
      #   The time the event was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_id
      #   A unique workflow event ID.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute status
      #   Status of the event.
      #
      #   @return [Symbol, Deeprails::Models::WorkflowEventResponse::Status]
      required :status, enum: -> { Deeprails::WorkflowEventResponse::Status }

      # @!attribute workflow_id
      #   Workflow ID associated with the event.
      #
      #   @return [String]
      required :workflow_id, String

      # @!method initialize(created_at:, event_id:, status:, workflow_id:)
      #   @param created_at [Time] The time the event was created in UTC.
      #
      #   @param event_id [String] A unique workflow event ID.
      #
      #   @param status [Symbol, Deeprails::Models::WorkflowEventResponse::Status] Status of the event.
      #
      #   @param workflow_id [String] Workflow ID associated with the event.

      # Status of the event.
      #
      # @see Deeprails::Models::WorkflowEventResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        IN_PROGRESS = :"In Progress"
        COMPLETED = :Completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
