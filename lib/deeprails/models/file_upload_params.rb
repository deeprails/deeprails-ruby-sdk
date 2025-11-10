# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Files#upload
    class FileUploadParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute file
      #   The contents of the file to upload.
      #
      #   @return [Array<String>]
      required :file, Deeprails::Internal::Type::ArrayOf[String]

      # @!method initialize(file:, request_options: {})
      #   @param file [Array<String>] The contents of the file to upload.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
