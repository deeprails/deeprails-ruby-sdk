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

      # The contents of the files to upload.
      sig { returns(T::Array[String]) }
      attr_accessor :files

      sig do
        params(
          files: T::Array[String],
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The contents of the files to upload.
        files:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            files: T::Array[String],
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
