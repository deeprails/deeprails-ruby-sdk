# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#create
    class MonitorCreateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute guardrail_metrics
      #   An array of guardrail metrics that the model input and output pair will be
      #   evaluated on. For non-enterprise users, these will be limited to `correctness`,
      #   `completeness`, `instruction_adherence`, `context_adherence`,
      #   `ground_truth_adherence`, and/or `comprehensive_safety`.
      #
      #   @return [Array<Symbol, Deeprails::Models::MonitorCreateParams::GuardrailMetric>]
      required :guardrail_metrics,
               -> { Deeprails::Internal::Type::ArrayOf[enum: Deeprails::MonitorCreateParams::GuardrailMetric] }

      # @!attribute name
      #   Name of the new monitor.
      #
      #   @return [String]
      required :name, String

      # @!attribute description
      #   Description of the new monitor.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute file_search
      #   An array of file IDs to search in the monitor's evaluations. Files must be
      #   uploaded via the DeepRails API first.
      #
      #   @return [Array<String>, nil]
      optional :file_search, Deeprails::Internal::Type::ArrayOf[String]

      # @!attribute web_search
      #   Whether to enable web search for this monitor's evaluations. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :web_search, Deeprails::Internal::Type::Boolean

      # @!method initialize(guardrail_metrics:, name:, description: nil, file_search: nil, web_search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorCreateParams} for more details.
      #
      #   @param guardrail_metrics [Array<Symbol, Deeprails::Models::MonitorCreateParams::GuardrailMetric>] An array of guardrail metrics that the model input and output pair will be evalu
      #
      #   @param name [String] Name of the new monitor.
      #
      #   @param description [String] Description of the new monitor.
      #
      #   @param file_search [Array<String>] An array of file IDs to search in the monitor's evaluations. Files must be uploa
      #
      #   @param web_search [Boolean] Whether to enable web search for this monitor's evaluations. Defaults to false.
      #
      #   @param request_options [Deeprails::RequestOptions, Hash{Symbol=>Object}]

      module GuardrailMetric
        extend Deeprails::Internal::Type::Enum

        CORRECTNESS = :correctness
        COMPLETENESS = :completeness
        INSTRUCTION_ADHERENCE = :instruction_adherence
        CONTEXT_ADHERENCE = :context_adherence
        GROUND_TRUTH_ADHERENCE = :ground_truth_adherence
        COMPREHENSIVE_SAFETY = :comprehensive_safety

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
