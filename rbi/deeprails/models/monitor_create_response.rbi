# typed: strong

module Deeprails
  module Models
    MonitorCreateResponse =
      T.let(T.anything, Deeprails::Internal::Type::Converter)
  end
end
