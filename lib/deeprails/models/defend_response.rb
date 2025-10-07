# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#create_workflow
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute name
      #   Name of the workflow.
      #
      #   @return [String]
      required :name, String

      # @!attribute workflow_id
      #   A unique workflow ID.
      #
      #   @return [String]
      required :workflow_id, String

      # @!attribute created_at
      #   The time the workflow was created in UTC.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   Description for the workflow.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute improvement_action
      #   The action used to improve outputs that fail one or more guardrail metrics for
      #   the workflow events. May be `regenerate`, `fixit`, or null which represents “do
      #   nothing”. ReGen runs the user's exact input prompt with minor induced variance.
      #   Fixit attempts to directly address the shortcomings of the output using the
      #   guardrail failure rationale. Do nothing does not attempt any improvement.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ImprovementAction, nil]
      optional :improvement_action, enum: -> { Deeprails::DefendResponse::ImprovementAction }, nil?: true

      # @!attribute max_retries
      #   Max. number of improvement action retries until a given event passes the
      #   guardrails.
      #
      #   @return [Integer, nil]
      optional :max_retries, Integer

      # @!attribute modified_at
      #   The most recent time the workflow was modified in UTC.
      #
      #   @return [Time, nil]
      optional :modified_at, Time

      # @!attribute status
      #   Status of the selected workflow. May be `archived` or `active`. Archived
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::Status, nil]
      optional :status, enum: -> { Deeprails::DefendResponse::Status }

      # @!attribute success_rate
      #   Rate of events associated with this workflow that passed evaluation.
      #
      #   @return [Float, nil]
      optional :success_rate, Float

      # @!method initialize(name:, workflow_id:, created_at: nil, description: nil, improvement_action: nil, max_retries: nil, modified_at: nil, status: nil, success_rate: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendResponse} for more details.
      #
      #   Response payload for guardrail workflow operations.
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param workflow_id [String] A unique workflow ID.
      #
      #   @param created_at [Time] The time the workflow was created in UTC.
      #
      #   @param description [String] Description for the workflow.
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendResponse::ImprovementAction, nil] The action used to improve outputs that fail one or more guardrail metrics for t
      #
      #   @param max_retries [Integer] Max. number of improvement action retries until a given event passes the guardra
      #
      #   @param modified_at [Time] The most recent time the workflow was modified in UTC.
      #
      #   @param status [Symbol, Deeprails::Models::DefendResponse::Status] Status of the selected workflow. May be `archived` or `active`. Archived workf
      #
      #   @param success_rate [Float] Rate of events associated with this workflow that passed evaluation.

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events. May be `regenerate`, `fixit`, or null which represents “do
      # nothing”. ReGen runs the user's exact input prompt with minor induced variance.
      # Fixit attempts to directly address the shortcomings of the output using the
      # guardrail failure rationale. Do nothing does not attempt any improvement.
      #
      # @see Deeprails::Models::DefendResponse#improvement_action
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGENERATE = :regenerate
        FIXIT = :fixit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the selected workflow. May be `archived` or `active`. Archived
      # workflows will not accept events.
      #
      # @see Deeprails::Models::DefendResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        ARCHIVED = :archived
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
