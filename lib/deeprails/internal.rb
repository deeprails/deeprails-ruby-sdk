# frozen_string_literal: true

module Deeprails
  module Internal
    extend Deeprails::Internal::Util::SorbetRuntimeSupport

    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Deeprails::Internal}::OMIT>" }
      end
        .freeze

    define_sorbet_constant!(:AnyHash) do
      T.type_alias { T::Hash[Symbol, T.anything] }
    end
    define_sorbet_constant!(:FileInput) do
      T.type_alias { T.any(Pathname, StringIO, IO, String, Deeprails::FilePart) }
    end
  end
end
