# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#update
    class MonitorUpdateParams < Deeprails::Internal::Type::BaseModel
      extend Deeprails::Internal::Type::RequestParameters::Converter
      include Deeprails::Internal::Type::RequestParameters

      # @!attribute monitor_id
      #
      #   @return [String]
      required :monitor_id, String

      # @!attribute description
      #   New description of the monitor.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute file_search
      #   An array of file IDs to search in the monitor's evaluations. Files must be
      #   uploaded via the DeepRails API first.
      #
      #   @return [Array<String>, nil]
      optional :file_search, Deeprails::Internal::Type::ArrayOf[String]

      # @!attribute guardrail_metrics
      #   An array of the new guardrail metrics that model input and output pairs will be
      #   evaluated on.
      #
      #   @return [Array<Symbol, Deeprails::Models::MonitorUpdateParams::GuardrailMetric>, nil]
      optional :guardrail_metrics,
               -> { Deeprails::Internal::Type::ArrayOf[enum: Deeprails::MonitorUpdateParams::GuardrailMetric] }

      # @!attribute name
      #   New name of the monitor.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorUpdateParams::Status, nil]
      optional :status, enum: -> { Deeprails::MonitorUpdateParams::Status }

      # @!attribute web_search
      #   Whether to enable web search for this monitor's evaluations.
      #
      #   @return [Boolean, nil]
      optional :web_search, Deeprails::Internal::Type::Boolean

      # @!method initialize(monitor_id:, description: nil, file_search: nil, guardrail_metrics: nil, name: nil, status: nil, web_search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorUpdateParams} for more details.
      #
      #   @param monitor_id [String]
      #
      #   @param description [String] New description of the monitor.
      #
      #   @param file_search [Array<String>] An array of file IDs to search in the monitor's evaluations. Files must be uploa
      #
      #   @param guardrail_metrics [Array<Symbol, Deeprails::Models::MonitorUpdateParams::GuardrailMetric>] An array of the new guardrail metrics that model input and output pairs will be
      #
      #   @param name [String] New name of the monitor.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorUpdateParams::Status] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
      #
      #   @param web_search [Boolean] Whether to enable web search for this monitor's evaluations.
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

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module Status
        extend Deeprails::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
