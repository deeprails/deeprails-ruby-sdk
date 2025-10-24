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
      #   the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
      #   user's input prompt with minor induced variance. FixIt attempts to directly
      #   address the shortcomings of the output using the guardrail failure rationale. Do
      #   Nothing does not attempt any improvement.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::ImprovementAction, nil]
      optional :improvement_action, enum: -> { Deeprails::DefendResponse::ImprovementAction }

      # @!attribute max_improvement_attempts
      #   Max. number of improvement action retries until a given event passes the
      #   guardrails.
      #
      #   @return [Integer, nil]
      optional :max_improvement_attempts, Integer

      # @!attribute modified_at
      #   The most recent time the workflow was modified in UTC.
      #
      #   @return [Time, nil]
      optional :modified_at, Time

      # @!attribute status
      #   Status of the selected workflow. May be `inactive` or `active`. Inactive
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendResponse::Status, nil]
      optional :status, enum: -> { Deeprails::DefendResponse::Status }

      # @!attribute success_rate
      #   Rate of events associated with this workflow that passed evaluation.
      #
      #   @return [Float, nil]
      optional :success_rate, Float

      # @!method initialize(name:, workflow_id:, created_at: nil, description: nil, improvement_action: nil, max_improvement_attempts: nil, modified_at: nil, status: nil, success_rate: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendResponse} for more details.
      #
      #   @param name [String] Name of the workflow.
      #
      #   @param workflow_id [String] A unique workflow ID.
      #
      #   @param created_at [Time] The time the workflow was created in UTC.
      #
      #   @param description [String] Description for the workflow.
      #
      #   @param improvement_action [Symbol, Deeprails::Models::DefendResponse::ImprovementAction] The action used to improve outputs that fail one or more guardrail metrics for t
      #
      #   @param max_improvement_attempts [Integer] Max. number of improvement action retries until a given event passes the guardra
      #
      #   @param modified_at [Time] The most recent time the workflow was modified in UTC.
      #
      #   @param status [Symbol, Deeprails::Models::DefendResponse::Status] Status of the selected workflow. May be `inactive` or `active`. Inactive workf
      #
      #   @param success_rate [Float] Rate of events associated with this workflow that passed evaluation.

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events. May be `regen`, `fixit`, or `do_nothing`. ReGen runs the
      # user's input prompt with minor induced variance. FixIt attempts to directly
      # address the shortcomings of the output using the guardrail failure rationale. Do
      # Nothing does not attempt any improvement.
      #
      # @see Deeprails::Models::DefendResponse#improvement_action
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        REGEN = :regen
        FIXIT = :fixit
        DO_NOTHING = :do_nothing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      #
      # @see Deeprails::Models::DefendResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        INACTIVE = :inactive
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
