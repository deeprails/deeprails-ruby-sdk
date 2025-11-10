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

      # Name of this monitor.
      sig { returns(String) }
      attr_accessor :name

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      sig { returns(Deeprails::MonitorDetailResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # An array of capabilities associated with this monitor.
      sig do
        returns(
          T.nilable(T::Array[Deeprails::MonitorDetailResponse::Capability])
        )
      end
      attr_reader :capabilities

      sig do
        params(
          capabilities:
            T::Array[Deeprails::MonitorDetailResponse::Capability::OrHash]
        ).void
      end
      attr_writer :capabilities

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

      # An array of files associated with this monitor.
      sig do
        returns(T.nilable(T::Array[Deeprails::MonitorDetailResponse::File]))
      end
      attr_reader :files

      sig do
        params(
          files: T::Array[Deeprails::MonitorDetailResponse::File::OrHash]
        ).void
      end
      attr_writer :files

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

      sig do
        params(
          monitor_id: String,
          name: String,
          status: Deeprails::MonitorDetailResponse::Status::OrSymbol,
          capabilities:
            T::Array[Deeprails::MonitorDetailResponse::Capability::OrHash],
          created_at: Time,
          description: String,
          evaluations:
            T::Array[Deeprails::MonitorDetailResponse::Evaluation::OrHash],
          files: T::Array[Deeprails::MonitorDetailResponse::File::OrHash],
          stats: Deeprails::MonitorDetailResponse::Stats::OrHash,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique monitor ID.
        monitor_id:,
        # Name of this monitor.
        name:,
        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        status:,
        # An array of capabilities associated with this monitor.
        capabilities: nil,
        # The time the monitor was created in UTC.
        created_at: nil,
        # Description of this monitor.
        description: nil,
        # An array of all evaluations performed by this monitor. Each one corresponds to a
        # separate monitor event.
        evaluations: nil,
        # An array of files associated with this monitor.
        files: nil,
        # Contains five fields used for stats of this monitor: total evaluations,
        # completed evaluations, failed evaluations, queued evaluations, and in progress
        # evaluations.
        stats: nil,
        # The most recent time the monitor was modified in UTC.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            monitor_id: String,
            name: String,
            status: Deeprails::MonitorDetailResponse::Status::TaggedSymbol,
            capabilities:
              T::Array[Deeprails::MonitorDetailResponse::Capability],
            created_at: Time,
            description: String,
            evaluations: T::Array[Deeprails::MonitorDetailResponse::Evaluation],
            files: T::Array[Deeprails::MonitorDetailResponse::File],
            stats: Deeprails::MonitorDetailResponse::Stats,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorDetailResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Deeprails::MonitorDetailResponse::Status::TaggedSymbol)
        INACTIVE =
          T.let(
            :inactive,
            Deeprails::MonitorDetailResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::MonitorDetailResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Capability < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorDetailResponse::Capability,
              Deeprails::Internal::AnyHash
            )
          end

        # The type of capability.
        sig { returns(T.nilable(String)) }
        attr_reader :capability

        sig { params(capability: String).void }
        attr_writer :capability

        sig { params(capability: String).returns(T.attached_class) }
        def self.new(
          # The type of capability.
          capability: nil
        )
        end

        sig { override.returns({ capability: String }) }
        def to_hash
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

        # Error message if the evaluation failed.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

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

        sig do
          params(
            evaluation_status:
              Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::OrSymbol,
            model_input:
              Deeprails::MonitorDetailResponse::Evaluation::ModelInput::OrHash,
            model_output: String,
            run_mode:
              Deeprails::MonitorDetailResponse::Evaluation::RunMode::OrSymbol,
            created_at: Time,
            error_message: String,
            evaluation_result: T::Hash[Symbol, T.anything],
            evaluation_total_cost: Float,
            guardrail_metrics:
              T::Array[
                Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::OrSymbol
              ],
            nametag: String,
            progress: Integer
          ).returns(T.attached_class)
        end
        def self.new(
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
          # Error message if the evaluation failed.
          error_message: nil,
          # Evaluation result consisting of average scores and rationales for each of the
          # evaluated guardrail metrics.
          evaluation_result: nil,
          # Total cost of the evaluation.
          evaluation_total_cost: nil,
          # An array of guardrail metrics that the model input and output pair will be
          # evaluated on.
          guardrail_metrics: nil,
          # An optional, user-defined tag for the evaluation.
          nametag: nil,
          # Evaluation progress. Values range between 0 and 100; 100 corresponds to a
          # completed `evaluation_status`.
          progress: nil
        )
        end

        sig do
          override.returns(
            {
              evaluation_status:
                Deeprails::MonitorDetailResponse::Evaluation::EvaluationStatus::TaggedSymbol,
              model_input:
                Deeprails::MonitorDetailResponse::Evaluation::ModelInput,
              model_output: String,
              run_mode:
                Deeprails::MonitorDetailResponse::Evaluation::RunMode::TaggedSymbol,
              created_at: Time,
              error_message: String,
              evaluation_result: T::Hash[Symbol, T.anything],
              evaluation_total_cost: Float,
              guardrail_metrics:
                T::Array[
                  Deeprails::MonitorDetailResponse::Evaluation::GuardrailMetric::TaggedSymbol
                ],
              nametag: String,
              progress: Integer
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

      class File < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorDetailResponse::File,
              Deeprails::Internal::AnyHash
            )
          end

        # The ID of the file.
        sig { returns(T.nilable(String)) }
        attr_reader :file_id

        sig { params(file_id: String).void }
        attr_writer :file_id

        # The name of the file.
        sig { returns(T.nilable(String)) }
        attr_reader :file_name

        sig { params(file_name: String).void }
        attr_writer :file_name

        # The size of the file in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :file_size

        sig { params(file_size: Integer).void }
        attr_writer :file_size

        sig do
          params(
            file_id: String,
            file_name: String,
            file_size: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the file.
          file_id: nil,
          # The name of the file.
          file_name: nil,
          # The size of the file in bytes.
          file_size: nil
        )
        end

        sig do
          override.returns(
            { file_id: String, file_name: String, file_size: Integer }
          )
        end
        def to_hash
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
