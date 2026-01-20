# frozen_string_literal: true

module Deeprails
  module Internal
    # @generic Elem
    #
    # @example
    #   stream.each do |event|
    #     puts(event)
    #   end
    class Stream
      include Deeprails::Internal::Type::BaseStream

      # @api private
      #
      # @return [Enumerable<generic<Elem>>]
      private def iterator
        @iterator ||= Deeprails::Internal::Util.chain_fused(@stream) do |y|
          @stream.each do |msg|
            next if (data = msg.fetch(:data)).nil?
            decoded = JSON.parse(data, symbolize_names: true)
            unwrapped = Deeprails::Internal::Util.dig(decoded, @unwrap)
            y << Deeprails::Internal::Type::Converter.coerce(@model, unwrapped)
          end
        end
      end
    end
  end
end
