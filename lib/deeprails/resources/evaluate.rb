# frozen_string_literal: true

module Deeprails
  module Resources
    class Evaluate
      # @api private
      #
      # @param client [Deeprails::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
