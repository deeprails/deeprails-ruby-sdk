# typed: strong

module Deeprails
  module Resources
    class Evaluate
      # @api private
      sig { params(client: Deeprails::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
