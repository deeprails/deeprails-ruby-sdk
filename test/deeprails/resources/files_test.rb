# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::FilesTest < Deeprails::Test::ResourceTest
  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @deeprails.files.upload(file: Pathname(__FILE__))

    assert_pattern do
      response => Deeprails::Models::FileUploadResponse
    end

    assert_pattern do
      response => {
        created_at: Time | nil,
        file_id: String | nil,
        file_name: String | nil,
        file_path: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
