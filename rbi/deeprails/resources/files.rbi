# typed: strong

module Deeprails
  module Resources
    class Files
      # Use this endpoint to upload a file to the DeepRails API
      sig do
        params(
          file: Deeprails::Internal::FileInput,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::FileResponse)
      end
      def upload(
        # The contents of the file to upload.
        file:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Deeprails::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
