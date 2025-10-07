# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#retrieve_event
    class WorkflowEventResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute event_id
      #   A unique workflow event ID.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute workflow_id
      #   Workflow ID associated with the event.
      #
      #   @return [String]
      required :workflow_id, String

      # @!attribute attempt_number
      #   Count of improvement attempts for the event. If greater than one then all
      #   previous improvement attempts failed.
      #
      #   @return [Integer, nil]
      optional :attempt_number, Integer

      # @!attribute evaluation_id
      #   A unique evaluation ID associated with this event. Every event has one or more
      #   evaluation attempts.
      #
      #   @return [String, nil]
      optional :evaluation_id, String

      # @!attribute filtered
      #   `False` if evaluation passed all of the guardrail metrics, `True` if evaluation
      #   failed any of the guardrail metrics.
      #
      #   @return [Boolean, nil]
      optional :filtered, Deeprails::Internal::Type::Boolean

      # @!method initialize(event_id:, workflow_id:, attempt_number: nil, evaluation_id: nil, filtered: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::WorkflowEventResponse} for more details.
      #
      #   Response payload for workflow event operations.
      #
      #   @param event_id [String] A unique workflow event ID.
      #
      #   @param workflow_id [String] Workflow ID associated with the event.
      #
      #   @param attempt_number [Integer] Count of improvement attempts for the event. If greater than one then all previ
      #
      #   @param evaluation_id [String] A unique evaluation ID associated with this event. Every event has one or more
      #
      #   @param filtered [Boolean] `False` if evaluation passed all of the guardrail metrics, `True` if evaluation
    end
  end
end
