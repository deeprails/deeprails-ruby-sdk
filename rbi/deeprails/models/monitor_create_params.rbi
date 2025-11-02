# typed: strong

module Deeprails
  module Models
    class MonitorCreateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorCreateParams, Deeprails::Internal::AnyHash)
        end

      # An array of guardrail metrics that the model input and output pair will be
      # evaluated on. For non-enterprise users, these will be limited to `correctness`,
      # `completeness`, `instruction_adherence`, `context_adherence`,
      # `ground_truth_adherence`, and/or `comprehensive_safety`.
      sig do
        returns(
          T::Array[Deeprails::MonitorCreateParams::GuardrailMetric::OrSymbol]
        )
      end
      attr_accessor :guardrail_metrics

      # Name of the new monitor.
      sig { returns(String) }
      attr_accessor :name

      # Description of the new monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # An array of file IDs to search in the monitor's evaluations. Files must be
      # uploaded via the DeepRails API first.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :file_search

      sig { params(file_search: T::Array[String]).void }
      attr_writer :file_search

      # Whether to enable web search for this monitor's evaluations. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :web_search

      sig { params(web_search: T::Boolean).void }
      attr_writer :web_search

      sig do
        params(
          guardrail_metrics:
            T::Array[Deeprails::MonitorCreateParams::GuardrailMetric::OrSymbol],
          name: String,
          description: String,
          file_search: T::Array[String],
          web_search: T::Boolean,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of guardrail metrics that the model input and output pair will be
        # evaluated on. For non-enterprise users, these will be limited to `correctness`,
        # `completeness`, `instruction_adherence`, `context_adherence`,
        # `ground_truth_adherence`, and/or `comprehensive_safety`.
        guardrail_metrics:,
        # Name of the new monitor.
        name:,
        # Description of the new monitor.
        description: nil,
        # An array of file IDs to search in the monitor's evaluations. Files must be
        # uploaded via the DeepRails API first.
        file_search: nil,
        # Whether to enable web search for this monitor's evaluations. Defaults to false.
        web_search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            guardrail_metrics:
              T::Array[
                Deeprails::MonitorCreateParams::GuardrailMetric::OrSymbol
              ],
            name: String,
            description: String,
            file_search: T::Array[String],
            web_search: T::Boolean,
            request_options: Deeprails::RequestOptions
          }
        )
      end
      def to_hash
      end

      module GuardrailMetric
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorCreateParams::GuardrailMetric)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORRECTNESS =
          T.let(
            :correctness,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )
        COMPLETENESS =
          T.let(
            :completeness,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )
        INSTRUCTION_ADHERENCE =
          T.let(
            :instruction_adherence,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )
        CONTEXT_ADHERENCE =
          T.let(
            :context_adherence,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )
        GROUND_TRUTH_ADHERENCE =
          T.let(
            :ground_truth_adherence,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )
        COMPREHENSIVE_SAFETY =
          T.let(
            :comprehensive_safety,
            Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorCreateParams::GuardrailMetric::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
