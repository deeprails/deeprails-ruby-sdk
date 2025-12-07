# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Defend#create_workflow
    class DefendCreateResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute created_at
      #   The time the workflow was created in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #   Status of the selected workflow. May be `inactive` or `active`. Inactive
      #   workflows will not accept events.
      #
      #   @return [Symbol, Deeprails::Models::DefendCreateResponse::Status]
      required :status, enum: -> { Deeprails::DefendCreateResponse::Status }

      # @!attribute workflow_id
      #   A unique workflow ID.
      #
      #   @return [String]
      required :workflow_id, String

      # @!method initialize(created_at:, status:, workflow_id:)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::DefendCreateResponse} for more details.
      #
      #   @param created_at [Time] The time the workflow was created in UTC.
      #
      #   @param status [Symbol, Deeprails::Models::DefendCreateResponse::Status] Status of the selected workflow. May be `inactive` or `active`. Inactive workf
      #
      #   @param workflow_id [String] A unique workflow ID.

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      #
      # @see Deeprails::Models::DefendCreateResponse#status
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
