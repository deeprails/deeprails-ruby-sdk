# typed: strong

module Deeprails
  module Models
    class FileResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::FileResponse, Deeprails::Internal::AnyHash)
        end

      # The time the file was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # A unique file ID.
      sig { returns(T.nilable(String)) }
      attr_reader :file_id

      sig { params(file_id: String).void }
      attr_writer :file_id

      # Name of the file.
      sig { returns(T.nilable(String)) }
      attr_reader :file_name

      sig { params(file_name: String).void }
      attr_writer :file_name

      # Path to the s3 bucket where the file is stored.
      sig { returns(T.nilable(String)) }
      attr_reader :file_path

      sig { params(file_path: String).void }
      attr_writer :file_path

      # The most recent time the file was modified in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          created_at: Time,
          file_id: String,
          file_name: String,
          file_path: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The time the file was created in UTC.
        created_at: nil,
        # A unique file ID.
        file_id: nil,
        # Name of the file.
        file_name: nil,
        # Path to the s3 bucket where the file is stored.
        file_path: nil,
        # The most recent time the file was modified in UTC.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            file_id: String,
            file_name: String,
            file_path: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
