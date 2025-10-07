# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Evaluate#retrieve
    class EvaluateRetrieveParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
