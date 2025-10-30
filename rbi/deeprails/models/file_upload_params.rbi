# typed: strong

module Deeprails
  module Models
    class FileUploadParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::FileUploadParams, Deeprails::Internal::AnyHash)
        end

      # The contents of the file to upload.
      sig { returns(Deeprails::Internal::FileInput) }
      attr_accessor :file

      sig do
        params(
          file: Deeprails::Internal::FileInput,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The contents of the file to upload.
        file:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file: Deeprails::Internal::FileInput,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
