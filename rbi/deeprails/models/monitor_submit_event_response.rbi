# typed: strong

module Deeprails
  module Models
    MonitorSubmitEventResponse =
      T.let(T.anything, Deeprails::Internal::Type::Converter)
  end
end
