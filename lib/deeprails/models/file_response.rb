# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Files#upload
    class FileResponse < Deeprails::Internal::Type::BaseModel
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

      # @!attribute file_size
      #   The size of the file in bytes.
      #
      #   @return [Integer, nil]
      optional :file_size, Integer

      # @!method initialize(file_id: nil, file_name: nil, file_size: nil)
      #   @param file_id [String] A unique file ID.
      #
      #   @param file_name [String] Name of the file.
      #
      #   @param file_size [Integer] The size of the file in bytes.
    end
  end
end
