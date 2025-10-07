# frozen_string_literal: true

require_relative "lib/deeprails/version"

Gem::Specification.new do |s|
  s.name = "deeprails"
  s.version = Deeprails::VERSION
  s.summary = "Ruby library to access the Deeprails API"
  s.authors = ["Deeprails"]
  s.email = "support@deeprails.ai"
  s.homepage = "https://gemdocs.org/gems/deeprails"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/deeprails/deeprails-ruby-sdk"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
