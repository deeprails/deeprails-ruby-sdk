# typed: strong

module Deeprails
  module Models
    class DefendUpdateResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::DefendUpdateResponse, Deeprails::Internal::AnyHash)
        end

      # The time the workflow was last modified in UTC.
      sig { returns(Time) }
      attr_accessor :modified_at

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      sig { returns(Deeprails::DefendUpdateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # A unique workflow ID.
      sig { returns(String) }
      attr_accessor :workflow_id

      sig do
        params(
          modified_at: Time,
          status: Deeprails::DefendUpdateResponse::Status::OrSymbol,
          workflow_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the workflow was last modified in UTC.
        modified_at:,
        # Status of the selected workflow. May be `inactive` or `active`. Inactive
        # workflows will not accept events.
        status:,
        # A unique workflow ID.
        workflow_id:
      )
      end

      sig do
        override.returns(
          {
            modified_at: Time,
            status: Deeprails::DefendUpdateResponse::Status::TaggedSymbol,
            workflow_id: String
          }
        )
      end
      def to_hash
      end

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendUpdateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INACTIVE =
          T.let(
            :inactive,
            Deeprails::DefendUpdateResponse::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Deeprails::DefendUpdateResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::DefendUpdateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
