# typed: strong

module Deeprails
  module Models
    MonitorRetrieveResponse =
      T.let(T.anything, Deeprails::Internal::Type::Converter)
  end
end
