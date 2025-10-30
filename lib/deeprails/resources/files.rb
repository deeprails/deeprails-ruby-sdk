# frozen_string_literal: true

module Deeprails
  module Resources
    class Files
      # Use this endpoint to upload a file to the DeepRails API
      #
      # @overload upload(file:, request_options: {})
      #
      # @param file [Pathname, StringIO, IO, String, Deeprails::FilePart] The contents of the file to upload.
      #
      # @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Deeprails::Models::FileResponse]
      #
      # @see Deeprails::Models::FileUploadParams
      def upload(params)
        parsed, options = Deeprails::FileUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: "files/upload",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Deeprails::FileResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Deeprails::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
