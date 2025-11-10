# typed: strong

module Deeprails
  module Models
    class FileResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::FileResponse, Deeprails::Internal::AnyHash)
        end

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

      # The size of the file in bytes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :file_size

      sig { params(file_size: Integer).void }
      attr_writer :file_size

      sig do
        params(file_id: String, file_name: String, file_size: Integer).returns(
          T.attached_class
        )
      end
      def self.new(
        # A unique file ID.
        file_id: nil,
        # Name of the file.
        file_name: nil,
        # The size of the file in bytes.
        file_size: nil
      )
      end

      sig do
        override.returns(
          { file_id: String, file_name: String, file_size: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
