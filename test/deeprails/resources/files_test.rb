# frozen_string_literal: true

require_relative "../test_helper"

class Deeprails::Test::Resources::FilesTest < Deeprails::Test::ResourceTest
  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @deep_rails.files.upload(files: ["string"])

    assert_pattern do
      response => Deeprails::FileResponse
    end

    assert_pattern do
      response => {
        file_id: String | nil,
        file_name: String | nil,
        file_size: Integer | nil
      }
    end
  end
end
