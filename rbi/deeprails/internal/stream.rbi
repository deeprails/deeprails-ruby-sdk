# typed: strong

module Deeprails
  module Internal
    class Stream
      Message =
        type_member(:in) do
          { fixed: Deeprails::Internal::Util::ServerSentEvent }
        end
      Elem = type_member(:out)

      include Deeprails::Internal::Type::BaseStream

      # @api private
      sig { override.returns(T::Enumerable[Elem]) }
      private def iterator
      end
    end
  end
end
