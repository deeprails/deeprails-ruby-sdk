# typed: strong

module Deeprails
  module Models
    class DefendCreateResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::DefendCreateResponse, Deeprails::Internal::AnyHash)
        end

      # The time the workflow was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      sig { returns(Deeprails::DefendCreateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # A unique workflow ID.
      sig { returns(String) }
      attr_accessor :workflow_id

      sig do
        params(
          created_at: Time,
          status: Deeprails::DefendCreateResponse::Status::OrSymbol,
          workflow_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the workflow was created in UTC.
        created_at:,
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
            created_at: Time,
            status: Deeprails::DefendCreateResponse::Status::TaggedSymbol,
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
            T.all(Symbol, Deeprails::DefendCreateResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INACTIVE =
          T.let(
            :inactive,
            Deeprails::DefendCreateResponse::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Deeprails::DefendCreateResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::DefendCreateResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
