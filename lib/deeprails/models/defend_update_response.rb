# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#update_workflow
    class DefendUpdateResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute modified_at
      #   The time the workflow was last modified in UTC.
      #
      #   @return [Time]
      required :modified_at, Time

      # @!attribute status
      #   Status of the selected workflow. May be `inactive` or `active`. Inactive
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendUpdateResponse::Status]
      required :status, enum: -> { Deeprails::DefendUpdateResponse::Status }

      # @!attribute workflow_id
      #   A unique workflow ID.
      #
      #   @return [String]
      required :workflow_id, String

      # @!method initialize(modified_at:, status:, workflow_id:)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendUpdateResponse} for more details.
      #
      #   @param modified_at [Time] The time the workflow was last modified in UTC.
      #
      #   @param status [Symbol, Deeprails::Models::DefendUpdateResponse::Status] Status of the selected workflow. May be `inactive` or `active`. Inactive workf
      #
      #   @param workflow_id [String] A unique workflow ID.

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      #
      # @see Deeprails::Models::DefendUpdateResponse#status
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
