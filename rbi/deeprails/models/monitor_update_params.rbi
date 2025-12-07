# typed: strong

module Deeprails
  module Models
    class MonitorUpdateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorUpdateParams, Deeprails::Internal::AnyHash)
        end

      # New description of the monitor.
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

      # An array of the new guardrail metrics that model input and output pairs will be
      # evaluated on.
      sig do
        returns(
          T.nilable(
            T::Array[Deeprails::MonitorUpdateParams::GuardrailMetric::OrSymbol]
          )
        )
      end
      attr_reader :guardrail_metrics

      sig do
        params(
          guardrail_metrics:
            T::Array[Deeprails::MonitorUpdateParams::GuardrailMetric::OrSymbol]
        ).void
      end
      attr_writer :guardrail_metrics

      # New name of the monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig do
        returns(T.nilable(Deeprails::MonitorUpdateParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Deeprails::MonitorUpdateParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Whether to enable web search for this monitor's evaluations.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :web_search

      sig { params(web_search: T::Boolean).void }
      attr_writer :web_search

      sig do
        params(
          description: String,
          file_search: T::Array[String],
          guardrail_metrics:
            T::Array[Deeprails::MonitorUpdateParams::GuardrailMetric::OrSymbol],
          name: String,
          status: Deeprails::MonitorUpdateParams::Status::OrSymbol,
          web_search: T::Boolean,
          request_options: Deeprails::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # New description of the monitor.
        description: nil,
        # An array of file IDs to search in the monitor's evaluations. Files must be
        # uploaded via the DeepRails API first.
        file_search: nil,
        # An array of the new guardrail metrics that model input and output pairs will be
        # evaluated on.
        guardrail_metrics: nil,
        # New name of the monitor.
        name: nil,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        status: nil,
        # Whether to enable web search for this monitor's evaluations.
        web_search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: String,
            file_search: T::Array[String],
            guardrail_metrics:
              T::Array[
                Deeprails::MonitorUpdateParams::GuardrailMetric::OrSymbol
              ],
            name: String,
            status: Deeprails::MonitorUpdateParams::Status::OrSymbol,
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
            T.all(Symbol, Deeprails::MonitorUpdateParams::GuardrailMetric)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORRECTNESS =
          T.let(
            :correctness,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )
        COMPLETENESS =
          T.let(
            :completeness,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )
        INSTRUCTION_ADHERENCE =
          T.let(
            :instruction_adherence,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )
        CONTEXT_ADHERENCE =
          T.let(
            :context_adherence,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )
        GROUND_TRUTH_ADHERENCE =
          T.let(
            :ground_truth_adherence,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )
        COMPREHENSIVE_SAFETY =
          T.let(
            :comprehensive_safety,
            Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorUpdateParams::GuardrailMetric::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Deeprails::MonitorUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Deeprails::MonitorUpdateParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Deeprails::MonitorUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::MonitorUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
