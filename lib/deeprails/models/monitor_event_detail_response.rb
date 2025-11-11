# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#retrieve_event
    class MonitorEventDetailResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute capabilities
      #   The capabilities associated with the monitor event.
      #
      #   @return [Array<Deeprails::Models::MonitorEventDetailResponse::Capability>, nil]
      optional :capabilities,
               -> { Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorEventDetailResponse::Capability] }

      # @!attribute eval_time
      #   The time spent on the evaluation in seconds.
      #
      #   @return [String, nil]
      optional :eval_time, String

      # @!attribute evaluation_result
      #   The result of the evaluation of the monitor event.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :evaluation_result, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

      # @!attribute event_id
      #   A unique monitor event ID.
      #
      #   @return [String, nil]
      optional :event_id, String

      # @!attribute files
      #   The files associated with the monitor event.
      #
      #   @return [Array<Deeprails::Models::MonitorEventDetailResponse::File>, nil]
      optional :files, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorEventDetailResponse::File] }

      # @!attribute guardrail_metrics
      #   The guardrail metrics evaluated by the monitor event.
      #
      #   @return [Array<String>, nil]
      optional :guardrail_metrics, Deeprails::Internal::Type::ArrayOf[String]

      # @!attribute model_input
      #   The model input used to create the monitor event.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :model_input, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

      # @!attribute model_output
      #   The output evaluated by the monitor event.
      #
      #   @return [String, nil]
      optional :model_output, String

      # @!attribute monitor_id
      #   Monitor ID associated with this event.
      #
      #   @return [String, nil]
      optional :monitor_id, String

      # @!attribute nametag
      #   A human-readable tag for the monitor event.
      #
      #   @return [String, nil]
      optional :nametag, String

      # @!attribute run_mode
      #   The run mode used to evaluate the monitor event.
      #
      #   @return [Symbol, Deeprails::Models::MonitorEventDetailResponse::RunMode, nil]
      optional :run_mode, enum: -> { Deeprails::MonitorEventDetailResponse::RunMode }

      # @!attribute status
      #   Status of the monitor event's evaluation.
      #
      #   @return [Symbol, Deeprails::Models::MonitorEventDetailResponse::Status, nil]
      optional :status, enum: -> { Deeprails::MonitorEventDetailResponse::Status }

      # @!attribute timestamp
      #   The time the monitor event was created in UTC.
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!method initialize(capabilities: nil, eval_time: nil, evaluation_result: nil, event_id: nil, files: nil, guardrail_metrics: nil, model_input: nil, model_output: nil, monitor_id: nil, nametag: nil, run_mode: nil, status: nil, timestamp: nil)
      #   @param capabilities [Array<Deeprails::Models::MonitorEventDetailResponse::Capability>] The capabilities associated with the monitor event.
      #
      #   @param eval_time [String] The time spent on the evaluation in seconds.
      #
      #   @param evaluation_result [Hash{Symbol=>Object}] The result of the evaluation of the monitor event.
      #
      #   @param event_id [String] A unique monitor event ID.
      #
      #   @param files [Array<Deeprails::Models::MonitorEventDetailResponse::File>] The files associated with the monitor event.
      #
      #   @param guardrail_metrics [Array<String>] The guardrail metrics evaluated by the monitor event.
      #
      #   @param model_input [Hash{Symbol=>Object}] The model input used to create the monitor event.
      #
      #   @param model_output [String] The output evaluated by the monitor event.
      #
      #   @param monitor_id [String] Monitor ID associated with this event.
      #
      #   @param nametag [String] A human-readable tag for the monitor event.
      #
      #   @param run_mode [Symbol, Deeprails::Models::MonitorEventDetailResponse::RunMode] The run mode used to evaluate the monitor event.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorEventDetailResponse::Status] Status of the monitor event's evaluation.
      #
      #   @param timestamp [Time] The time the monitor event was created in UTC.

      class Capability < Deeprails::Internal::Type::BaseModel
        # @!attribute capability
        #   The type of capability.
        #
        #   @return [String, nil]
        optional :capability, String

        # @!method initialize(capability: nil)
        #   @param capability [String] The type of capability.
      end

      class File < Deeprails::Internal::Type::BaseModel
        # @!attribute file_id
        #   The ID of the file.
        #
        #   @return [String, nil]
        optional :file_id, String

        # @!attribute file_name
        #   The name of the file.
        #
        #   @return [String, nil]
        optional :file_name, String

        # @!attribute file_size
        #   The size of the file in bytes.
        #
        #   @return [Integer, nil]
        optional :file_size, Integer

        # @!method initialize(file_id: nil, file_name: nil, file_size: nil)
        #   @param file_id [String] The ID of the file.
        #
        #   @param file_name [String] The name of the file.
        #
        #   @param file_size [Integer] The size of the file in bytes.
      end

      # The run mode used to evaluate the monitor event.
      #
      # @see Deeprails::Models::MonitorEventDetailResponse#run_mode
      module RunMode
        extend Deeprails::Internal::Type::Enum

        PRECISION_PLUS = :precision_plus
        PRECISION = :precision
        SMART = :smart
        ECONOMY = :economy

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the monitor event's evaluation.
      #
      # @see Deeprails::Models::MonitorEventDetailResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        IN_PROGRESS = :in_progress
        COMPLETED = :completed
        CANCELED = :canceled
        QUEUED = :queued
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
