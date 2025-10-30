# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Files#upload
    class FileResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute created_at
      #   The time the file was created in UTC.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute file_id
      #   A unique file ID.
      #
      #   @return [String, nil]
      optional :file_id, String

      # @!attribute file_name
      #   Name of the file.
      #
      #   @return [String, nil]
      optional :file_name, String

      # @!attribute file_path
      #   Path to the s3 bucket where the file is stored.
      #
      #   @return [String, nil]
      optional :file_path, String

      # @!attribute updated_at
      #   The most recent time the file was modified in UTC.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(created_at: nil, file_id: nil, file_name: nil, file_path: nil, updated_at: nil)
      #   @param created_at [Time] The time the file was created in UTC.
      #
      #   @param file_id [String] A unique file ID.
      #
      #   @param file_name [String] Name of the file.
      #
      #   @param file_path [String] Path to the s3 bucket where the file is stored.
      #
      #   @param updated_at [Time] The most recent time the file was modified in UTC.
    end
  end
end
