# typed: strong

module Deeprails
  module Resources
    class Files
      # Use this endpoint to upload a file to the DeepRails API
      sig do
        params(
          files: T::Array[String],
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(Deeprails::FileResponse)
      end
      def upload(
        # The contents of the files to upload.
        files:,
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
