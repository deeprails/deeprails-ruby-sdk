# frozen_string_literal: true

module Deeprails
  module Models
    # @see Deeprails::Resources::Monitor#retrieve
    class MonitorDetailResponse < Deeprails::Internal::Type::BaseModel
      # @!attribute monitor_id
      #   A unique monitor ID.
      #
      #   @return [String]
      required :monitor_id, String

      # @!attribute name
      #   Name of this monitor.
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorDetailResponse::Status]
      required :status, enum: -> { Deeprails::MonitorDetailResponse::Status }

      # @!attribute capabilities
      #   An array of capabilities associated with this monitor.
      #
      #   @return [Array<Deeprails::Models::MonitorDetailResponse::Capability>, nil]
      optional :capabilities,
               -> { Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Capability] }

      # @!attribute created_at
      #   The time the monitor was created in UTC.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #   Description of this monitor.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute evaluations
      #   An array of all evaluations performed by this monitor. Each one corresponds to a
      #   separate monitor event.
      #
      #   @return [Array<Deeprails::Models::MonitorDetailResponse::Evaluation>, nil]
      optional :evaluations,
               -> { Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::Evaluation] }

      # @!attribute files
      #   An array of files associated with this monitor.
      #
      #   @return [Array<Deeprails::Models::MonitorDetailResponse::File>, nil]
      optional :files, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::MonitorDetailResponse::File] }

      # @!attribute stats
      #   Contains five fields used for stats of this monitor: total evaluations,
      #   completed evaluations, failed evaluations, queued evaluations, and in progress
      #   evaluations.
      #
      #   @return [Deeprails::Models::MonitorDetailResponse::Stats, nil]
      optional :stats, -> { Deeprails::MonitorDetailResponse::Stats }

      # @!attribute updated_at
      #   The most recent time the monitor was modified in UTC.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(monitor_id:, name:, status:, capabilities: nil, created_at: nil, description: nil, evaluations: nil, files: nil, stats: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorDetailResponse} for more details.
      #
      #   @param monitor_id [String] A unique monitor ID.
      #
      #   @param name [String] Name of this monitor.
      #
      #   @param status [Symbol, Deeprails::Models::MonitorDetailResponse::Status] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
      #
      #   @param capabilities [Array<Deeprails::Models::MonitorDetailResponse::Capability>] An array of capabilities associated with this monitor.
      #
      #   @param created_at [Time] The time the monitor was created in UTC.
      #
      #   @param description [String] Description of this monitor.
      #
      #   @param evaluations [Array<Deeprails::Models::MonitorDetailResponse::Evaluation>] An array of all evaluations performed by this monitor. Each one corresponds to
      #
      #   @param files [Array<Deeprails::Models::MonitorDetailResponse::File>] An array of files associated with this monitor.
      #
      #   @param stats [Deeprails::Models::MonitorDetailResponse::Stats] Contains five fields used for stats of this monitor: total evaluations, complete
      #
      #   @param updated_at [Time] The most recent time the monitor was modified in UTC.

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      #
      # @see Deeprails::Models::MonitorDetailResponse#status
      module Status
        extend Deeprails::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Capability < Deeprails::Internal::Type::BaseModel
        # @!attribute capability
        #   The type of capability.
        #
        #   @return [String, nil]
        optional :capability, String

        # @!method initialize(capability: nil)
        #   @param capability [String] The type of capability.
      end

      class Evaluation < Deeprails::Internal::Type::BaseModel
        # @!attribute evaluation_status
        #   Status of the evaluation.
        #
        #   @return [Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::EvaluationStatus]
        required :evaluation_status, enum: -> { Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus }

        # @!attribute model_input
        #   A dictionary of inputs sent to the LLM to generate output. The dictionary must
        #   contain at least a `user_prompt` field or a `system_prompt` field. For
        #   ground_truth_adherence guardrail metric, `ground_truth` should be provided.
        #
        #   @return [Deeprails::Models::MonitorDetailResponse::Evaluation::ModelInput]
        required :model_input, -> { Deeprails::MonitorDetailResponse::Evaluation::ModelInput }

        # @!attribute model_output
        #   Output generated by the LLM to be evaluated.
        #
        #   @return [String]
        required :model_output, String

        # @!attribute run_mode
        #   Run mode for the evaluation. The run mode allows the user to optimize for speed,
        #   accuracy, and cost by determining which models are used to evaluate the event.
        #
        #   @return [Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::RunMode]
        required :run_mode, enum: -> { Deeprails::MonitorDetailResponse::Evaluation::RunMode }

        # @!attribute created_at
        #   The time the evaluation was created in UTC.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute error_message
        #   Error message if the evaluation failed.
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute evaluation_result
        #   Evaluation result consisting of average scores and rationales for each of the
        #   evaluated guardrail metrics.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :evaluation_result, Deeprails::Internal::Type::HashOf[Deeprails::Internal::Type::Unknown]

        # @!attribute evaluation_total_cost
        #   Total cost of the evaluation.
        #
        #   @return [Float, nil]
        optional :evaluation_total_cost, Float

        # @!attribute guardrail_metrics
        #   An array of guardrail metrics that the model input and output pair will be
        #   evaluated on.
        #
        #   @return [Array<Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::GuardrailMetric>, nil]
        optional :guardrail_metrics,
                 -> { Deeprails::Internal::Type::ArrayOf[enum: Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric] }

        # @!attribute nametag
        #   An optional, user-defined tag for the evaluation.
        #
        #   @return [String, nil]
        optional :nametag, String

        # @!attribute progress
        #   Evaluation progress. Values range between 0 and 100; 100 corresponds to a
        #   completed `evaluation_status`.
        #
        #   @return [Integer, nil]
        optional :progress, Integer

        # @!method initialize(evaluation_status:, model_input:, model_output:, run_mode:, created_at: nil, error_message: nil, evaluation_result: nil, evaluation_total_cost: nil, guardrail_metrics: nil, nametag: nil, progress: nil)
        #   Some parameter documentations has been truncated, see
        #   {Deeprails::Models::MonitorDetailResponse::Evaluation} for more details.
        #
        #   @param evaluation_status [Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::EvaluationStatus] Status of the evaluation.
        #
        #   @param model_input [Deeprails::Models::MonitorDetailResponse::Evaluation::ModelInput] A dictionary of inputs sent to the LLM to generate output. The dictionary must c
        #
        #   @param model_output [String] Output generated by the LLM to be evaluated.
        #
        #   @param run_mode [Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::RunMode] Run mode for the evaluation. The run mode allows the user to optimize for speed
        #
        #   @param created_at [Time] The time the evaluation was created in UTC.
        #
        #   @param error_message [String] Error message if the evaluation failed.
        #
        #   @param evaluation_result [Hash{Symbol=>Object}] Evaluation result consisting of average scores and rationales for each of the ev
        #
        #   @param evaluation_total_cost [Float] Total cost of the evaluation.
        #
        #   @param guardrail_metrics [Array<Symbol, Deeprails::Models::MonitorDetailResponse::Evaluation::GuardrailMetric>] An array of guardrail metrics that the model input and output pair will be evalu
        #
        #   @param nametag [String] An optional, user-defined tag for the evaluation.
        #
        #   @param progress [Integer] Evaluation progress. Values range between 0 and 100; 100 corresponds to a compl

        # Status of the evaluation.
        #
        # @see Deeprails::Models::MonitorDetailResponse::Evaluation#evaluation_status
        module EvaluationStatus
          extend Deeprails::Internal::Type::Enum

          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          CANCELED = :canceled
          QUEUED = :queued
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Deeprails::Models::MonitorDetailResponse::Evaluation#model_input
        class ModelInput < Deeprails::Internal::Type::BaseModel
          # @!attribute ground_truth
          #   The ground truth for evaluating Ground Truth Adherence guardrail.
          #
          #   @return [String, nil]
          optional :ground_truth, String

          # @!attribute system_prompt
          #   The system prompt used to generate the output.
          #
          #   @return [String, nil]
          optional :system_prompt, String

          # @!attribute user_prompt
          #   The user prompt used to generate the output.
          #
          #   @return [String, nil]
          optional :user_prompt, String

          # @!method initialize(ground_truth: nil, system_prompt: nil, user_prompt: nil)
          #   A dictionary of inputs sent to the LLM to generate output. The dictionary must
          #   contain at least a `user_prompt` field or a `system_prompt` field. For
          #   ground_truth_adherence guardrail metric, `ground_truth` should be provided.
          #
          #   @param ground_truth [String] The ground truth for evaluating Ground Truth Adherence guardrail.
          #
          #   @param system_prompt [String] The system prompt used to generate the output.
          #
          #   @param user_prompt [String] The user prompt used to generate the output.
        end

        # Run mode for the evaluation. The run mode allows the user to optimize for speed,
        # accuracy, and cost by determining which models are used to evaluate the event.
        #
        # @see Deeprails::Models::MonitorDetailResponse::Evaluation#run_mode
        module RunMode
          extend Deeprails::Internal::Type::Enum

          PRECISION_PLUS = :precision_plus
          PRECISION = :precision
          SMART = :smart
          ECONOMY = :economy

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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

      # @see Deeprails::Models::MonitorDetailResponse#stats
      class Stats < Deeprails::Internal::Type::BaseModel
        # @!attribute completed_evaluations
        #   Number of evaluations that completed successfully.
        #
        #   @return [Integer, nil]
        optional :completed_evaluations, Integer

        # @!attribute failed_evaluations
        #   Number of evaluations that failed.
        #
        #   @return [Integer, nil]
        optional :failed_evaluations, Integer

        # @!attribute in_progress_evaluations
        #   Number of evaluations currently in progress.
        #
        #   @return [Integer, nil]
        optional :in_progress_evaluations, Integer

        # @!attribute queued_evaluations
        #   Number of evaluations currently queued.
        #
        #   @return [Integer, nil]
        optional :queued_evaluations, Integer

        # @!attribute total_evaluations
        #   Total number of evaluations performed by this monitor.
        #
        #   @return [Integer, nil]
        optional :total_evaluations, Integer

        # @!method initialize(completed_evaluations: nil, failed_evaluations: nil, in_progress_evaluations: nil, queued_evaluations: nil, total_evaluations: nil)
        #   Contains five fields used for stats of this monitor: total evaluations,
        #   completed evaluations, failed evaluations, queued evaluations, and in progress
        #   evaluations.
        #
        #   @param completed_evaluations [Integer] Number of evaluations that completed successfully.
        #
        #   @param failed_evaluations [Integer] Number of evaluations that failed.
        #
        #   @param in_progress_evaluations [Integer] Number of evaluations currently in progress.
        #
        #   @param queued_evaluations [Integer] Number of evaluations currently queued.
        #
        #   @param total_evaluations [Integer] Total number of evaluations performed by this monitor.
      end
    end
  end
end
