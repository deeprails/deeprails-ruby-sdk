# typed: strong

module Deeprails
  module Models
    class MonitorDetailResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::MonitorDetailResponse, Deeprails::Internal::AnyHash)
        end

      # A unique monitor ID.
      sig { returns(String) }
      attr_accessor :monitor_id

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig do
        returns(Deeprails::MonitorDetailResponse::MonitorStatus::TaggedSymbol)
      end
      attr_accessor :monitor_status

      # Name of this monitor.
      sig { returns(String) }
      attr_accessor :name

      # The time the monitor was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Description of this monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # An array of all evaluations performed by this monitor. Each one corresponds to a
      # separate monitor event.
      sig do
        returns(
          T.nilable(T::Array[Deeprails::MonitorDetailResponse::Evaluation])
        )
      end
      attr_reader :evaluations

      sig do
        params(
          evaluations:
            T::Array[Deeprails::MonitorDetailResponse::Evaluation::OrHash]
        ).void
      end
      attr_writer :evaluations

      # Contains five fields used for stats of this monitor: total evaluations,
      # completed evaluations, failed evaluations, queued evaluations, and in progress
      # evaluations.
      sig { returns(T.nilable(Deeprails::MonitorDetailResponse::Stats)) }
      attr_reader :stats

      sig do
        params(stats: Deeprails::MonitorDetailResponse::Stats::OrHash).void
      end
      attr_writer :stats

      # The most recent time the monitor was modified in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # User ID of the user who created the monitor.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          monitor_id: String,
          monitor_status:
            Deeprails::MonitorDetailResponse::MonitorStatus::OrSymbol,
          name: String,
          created_at: Time,
          description: String,
          evaluations:
            T::Array[Deeprails::MonitorDetailResponse::Evaluation::OrHash],
          stats: Deeprails::MonitorDetailResponse::Stats::OrHash,
          updated_at: Time,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique monitor ID.
        monitor_id:,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        monitor_status:,
        # Name of this monitor.
        name:,
        # The time the monitor was created in UTC.
        created_at: nil,
        # Description of this monitor.
        description: nil,
        # An array of all evaluations performed by this monitor. Each one corresponds to a
        # separate monitor event.
        evaluations: nil,
        # Contains five fields used for stats of this monitor: total evaluations,
        # completed evaluations, failed evaluations, queued evaluations, and in progress
        # evaluations.
        stats: nil,
        # The most recent time the monitor was modified in UTC.
        updated_at: nil,
        # User ID of the user who created the monitor.
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            monitor_id: String,
            monitor_status:
              Deeprails::MonitorDetailResponse::MonitorStatus::TaggedSymbol,
            name: String,
            created_at: Time,
            description: String,
            evaluations: T::Array[Deeprails::MonitorDetailResponse::Evaluation],
            stats: Deeprails::MonitorDetailResponse::Stats,
            updated_at: Time,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module MonitorStatus
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorDetailResponse::MonitorStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Deeprails::MonitorDetailResponse::MonitorStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Deeprails::MonitorDetailResponse::MonitorStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorDetailResponse::MonitorStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Evaluation < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorDetailResponse::Evaluation,
              Deeprails::Internal::AnyHash
            )
          end

        # A unique evaluation ID.
        sig { returns(String) }
        attr_accessor :eval_id

        # Status of the evaluation.
        sig do
          returns(
            Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
          )
        end
        attr_accessor :evaluation_status

        # A dictionary of inputs sent to the LLM to generate output. The dictionary must
        # contain at least a `user_prompt` field or a `system_prompt` field. For
        # ground_truth_adherence guardrail metric, `ground_truth` should be provided.
        sig do
          returns(Deeprails::MonitorDetailResponse::Evaluation::ModelInput)
        end
        attr_reader :model_input

        sig do
          params(
            model_input:
              Deeprails::MonitorDetailResponse::Evaluation::ModelInput::OrHash
          ).void
        end
        attr_writer :model_input

        # Output generated by the LLM to be evaluated.
        sig { returns(String) }
        attr_accessor :model_output

        # Run mode for the evaluation. The run mode allows the user to optimize for speed,
        # accuracy, and cost by determining which models are used to evaluate the event.
        sig do
          returns(
            Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
          )
        end
        attr_accessor :run_mode

        # The time the evaluation was created in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The time the evaluation completed in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :end_timestamp

        sig { params(end_timestamp: Time).void }
        attr_writer :end_timestamp

        # Description of the error causing the evaluation to fail, if any.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        # The time the error causing the evaluation to fail was recorded.
        sig { returns(T.nilable(Time)) }
        attr_reader :error_timestamp

        sig { params(error_timestamp: Time).void }
        attr_writer :error_timestamp

        # Evaluation result consisting of average scores and rationales for each of the
        # evaluated guardrail metrics.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :evaluation_result

        sig { params(evaluation_result: T::Hash[Symbol, T.anything]).void }
        attr_writer :evaluation_result

        # Total cost of the evaluation.
        sig { returns(T.nilable(Float)) }
        attr_reader :evaluation_total_cost

        sig { params(evaluation_total_cost: Float).void }
        attr_writer :evaluation_total_cost

        # An array of guardrail metrics that the model input and output pair will be
        # evaluated on.
        sig do
          returns(
            T.nilable(
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :guardrail_metrics

        sig do
          params(
            guardrail_metrics:
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::OrSymbol
              ]
          ).void
        end
        attr_writer :guardrail_metrics

        # Model ID used to generate the output, like `gpt-4o` or `o3`.
        sig { returns(T.nilable(String)) }
        attr_reader :model_used

        sig { params(model_used: String).void }
        attr_writer :model_used

        # The most recent time the evaluation was modified in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :modified_at

        sig { params(modified_at: Time).void }
        attr_writer :modified_at

        # An optional, user-defined tag for the evaluation.
        sig { returns(T.nilable(String)) }
        attr_reader :nametag

        sig { params(nametag: String).void }
        attr_writer :nametag

        # Evaluation progress. Values range between 0 and 100; 100 corresponds to a
        # completed `evaluation_status`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :progress

        sig { params(progress: Integer).void }
        attr_writer :progress

        # The time the evaluation started in UTC.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_timestamp

        sig { params(start_timestamp: Time).void }
        attr_writer :start_timestamp

        sig do
          params(
            eval_id: String,
            evaluation_status:
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::OrSymbol,
            model_input:
              Deeprails::MonitorDetailResponse::Evaluation::ModelInput::OrHash,
            model_output: String,
            run_mode:
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::OrSymbol,
            created_at: Time,
            end_timestamp: Time,
            error_message: String,
            error_timestamp: Time,
            evaluation_result: T::Hash[Symbol, T.anything],
            evaluation_total_cost: Float,
            guardrail_metrics:
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::OrSymbol
              ],
            model_used: String,
            modified_at: Time,
            nametag: String,
            progress: Integer,
            start_timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique evaluation ID.
          eval_id:,
          # Status of the evaluation.
          evaluation_status:,
          # A dictionary of inputs sent to the LLM to generate output. The dictionary must
          # contain at least a `user_prompt` field or a `system_prompt` field. For
          # ground_truth_adherence guardrail metric, `ground_truth` should be provided.
          model_input:,
          # Output generated by the LLM to be evaluated.
          model_output:,
          # Run mode for the evaluation. The run mode allows the user to optimize for speed,
          # accuracy, and cost by determining which models are used to evaluate the event.
          run_mode:,
          # The time the evaluation was created in UTC.
          created_at: nil,
          # The time the evaluation completed in UTC.
          end_timestamp: nil,
          # Description of the error causing the evaluation to fail, if any.
          error_message: nil,
          # The time the error causing the evaluation to fail was recorded.
          error_timestamp: nil,
          # Evaluation result consisting of average scores and rationales for each of the
          # evaluated guardrail metrics.
          evaluation_result: nil,
          # Total cost of the evaluation.
          evaluation_total_cost: nil,
          # An array of guardrail metrics that the model input and output pair will be
          # evaluated on.
          guardrail_metrics: nil,
          # Model ID used to generate the output, like `gpt-4o` or `o3`.
          model_used: nil,
          # The most recent time the evaluation was modified in UTC.
          modified_at: nil,
          # An optional, user-defined tag for the evaluation.
          nametag: nil,
          # Evaluation progress. Values range between 0 and 100; 100 corresponds to a
          # completed `evaluation_status`.
          progress: nil,
          # The time the evaluation started in UTC.
          start_timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              eval_id: String,
              evaluation_status:
                Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol,
              model_input:
                Deeprails::MonitorDetailResponse::Evaluation::ModelInput,
              model_output: String,
              run_mode:
                Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol,
              created_at: Time,
              end_timestamp: Time,
              error_message: String,
              error_timestamp: Time,
              evaluation_result: T::Hash[Symbol, T.anything],
              evaluation_total_cost: Float,
              guardrail_metrics:
                T::Array[
                  Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
                ],
              model_used: String,
              modified_at: Time,
              nametag: String,
              progress: Integer,
              start_timestamp: Time
            }
          )
        end
        def to_hash
        end

        # Status of the evaluation.
        module EvaluationStatus
          extend Deeprails::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :in_progress,
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
            )
          QUEUED =
            T.let(
              :queued,
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ModelInput < Deeprails::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Deeprails::MonitorDetailResponse::Evaluation::ModelInput,
                Deeprails::Internal::AnyHash
              )
            end

          # The ground truth for evaluating Ground Truth Adherence guardrail.
          sig { returns(T.nilable(String)) }
          attr_reader :ground_truth

          sig { params(ground_truth: String).void }
          attr_writer :ground_truth

          # The system prompt used to generate the output.
          sig { returns(T.nilable(String)) }
          attr_reader :system_prompt

          sig { params(system_prompt: String).void }
          attr_writer :system_prompt

          # The user prompt used to generate the output.
          sig { returns(T.nilable(String)) }
          attr_reader :user_prompt

          sig { params(user_prompt: String).void }
          attr_writer :user_prompt

          # A dictionary of inputs sent to the LLM to generate output. The dictionary must
          # contain at least a `user_prompt` field or a `system_prompt` field. For
          # ground_truth_adherence guardrail metric, `ground_truth` should be provided.
          sig do
            params(
              ground_truth: String,
              system_prompt: String,
              user_prompt: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ground truth for evaluating Ground Truth Adherence guardrail.
            ground_truth: nil,
            # The system prompt used to generate the output.
            system_prompt: nil,
            # The user prompt used to generate the output.
            user_prompt: nil
          )
          end

          sig do
            override.returns(
              {
                ground_truth: String,
                system_prompt: String,
                user_prompt: String
              }
            )
          end
          def to_hash
          end
        end

        # Run mode for the evaluation. The run mode allows the user to optimize for speed,
        # accuracy, and cost by determining which models are used to evaluate the event.
        module RunMode
          extend Deeprails::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Deeprails::MonitorDetailResponse::Evaluation::RunMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRECISION_PLUS =
            T.let(
              :precision_plus,
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
            )
          PRECISION =
            T.let(
              :precision,
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
            )
          SMART =
            T.let(
              :smart,
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
            )
          ECONOMY =
            T.let(
              :economy,
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module GuardrailMetric
          extend Deeprails::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORRECTNESS =
            T.let(
              :correctness,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )
          COMPLETENESS =
            T.let(
              :completeness,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )
          INSTRUCTION_ADHERENCE =
            T.let(
              :instruction_adherence,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )
          CONTEXT_ADHERENCE =
            T.let(
              :context_adherence,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )
          GROUND_TRUTH_ADHERENCE =
            T.let(
              :ground_truth_adherence,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )
          COMPREHENSIVE_SAFETY =
            T.let(
              :comprehensive_safety,
              Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Stats < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorDetailResponse::Stats,
              Deeprails::Internal::AnyHash
            )
          end

        # Number of evaluations that completed successfully.
        sig { returns(T.nilable(Integer)) }
        attr_reader :completed_evaluations

        sig { params(completed_evaluations: Integer).void }
        attr_writer :completed_evaluations

        # Number of evaluations that failed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_evaluations

        sig { params(failed_evaluations: Integer).void }
        attr_writer :failed_evaluations

        # Number of evaluations currently in progress.
        sig { returns(T.nilable(Integer)) }
        attr_reader :in_progress_evaluations

        sig { params(in_progress_evaluations: Integer).void }
        attr_writer :in_progress_evaluations

        # Number of evaluations currently queued.
        sig { returns(T.nilable(Integer)) }
        attr_reader :queued_evaluations

        sig { params(queued_evaluations: Integer).void }
        attr_writer :queued_evaluations

        # Total number of evaluations performed by this monitor.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_evaluations

        sig { params(total_evaluations: Integer).void }
        attr_writer :total_evaluations

        # Contains five fields used for stats of this monitor: total evaluations,
        # completed evaluations, failed evaluations, queued evaluations, and in progress
        # evaluations.
        sig do
          params(
            completed_evaluations: Integer,
            failed_evaluations: Integer,
            in_progress_evaluations: Integer,
            queued_evaluations: Integer,
            total_evaluations: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of evaluations that completed successfully.
          completed_evaluations: nil,
          # Number of evaluations that failed.
          failed_evaluations: nil,
          # Number of evaluations currently in progress.
          in_progress_evaluations: nil,
          # Number of evaluations currently queued.
          queued_evaluations: nil,
          # Total number of evaluations performed by this monitor.
          total_evaluations: nil
        )
        end

        sig do
          override.returns(
            {
              completed_evaluations: Integer,
              failed_evaluations: Integer,
              in_progress_evaluations: Integer,
              queued_evaluations: Integer,
              total_evaluations: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
