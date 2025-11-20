# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Files#upload
    class FileUploadParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute files
      #   The contents of the files to upload.
      #
      #   @return [Array<String>]
      required :files, Deeprails::Internal::Type::ArrayOf[String]

      # @!method initialize(files:, request_options: {})
      #   @param files [Array<String>] The contents of the files to upload.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
