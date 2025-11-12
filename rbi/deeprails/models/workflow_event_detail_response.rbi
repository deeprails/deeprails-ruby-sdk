# typed: strong

module Deeprails
  module Models
    class WorkflowEventDetailResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Deeprails::WorkflowEventDetailResponse,
            Deeprails::Internal::AnyHash
          )
        end

      # History of evaluations for the event.
      sig do
        returns(
          T::Array[Deeprails::WorkflowEventDetailResponse::EvaluationHistory]
        )
      end
      attr_accessor :evaluation_history

      # Evaluation result consisting of average scores and rationales for each of the
      # evaluated guardrail metrics.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :evaluation_result

      # A unique workflow event ID.
      sig { returns(String) }
      attr_accessor :event_id

      # Status of the event.
      sig do
        returns(
          Deeprails::WorkflowEventDetailResponse::EventStatus::TaggedSymbol
        )
      end
      attr_accessor :event_status

      # Whether the event was filtered and requires improvement.
      sig { returns(T::Boolean) }
      attr_accessor :filtered

      # Improved model output after improvement tool was applied and each metric passed
      # evaluation.
      sig { returns(String) }
      attr_accessor :improved_model_output

      # Type of improvement action used to improve the event.
      sig do
        returns(
          Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol
        )
      end
      attr_accessor :improvement_action

      # Status of the improvement tool used to improve the event.
      sig do
        returns(
          T.nilable(
            Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :improvement_tool_status

      # Type of thresholds used to evaluate the event.
      sig do
        returns(
          Deeprails::WorkflowEventDetailResponse::ThresholdType::TaggedSymbol
        )
      end
      attr_accessor :threshold_type

      # Workflow ID associated with the event.
      sig { returns(String) }
      attr_accessor :workflow_id

      # Mapping of guardrail metric names to tolerance values. Values are strings
      # (`low`, `medium`, `high`) representing automatic tolerance levels.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :automatic_hallucination_tolerance_levels

      sig do
        params(
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::OrSymbol
            ]
        ).void
      end
      attr_writer :automatic_hallucination_tolerance_levels

      # Extended AI capabilities available to the event, if any. Can be `web_search`
      # and/or `file_search`.
      sig do
        returns(
          T.nilable(
            T::Array[Deeprails::WorkflowEventDetailResponse::Capability]
          )
        )
      end
      attr_reader :capabilities

      sig do
        params(
          capabilities:
            T::Array[Deeprails::WorkflowEventDetailResponse::Capability::OrHash]
        ).void
      end
      attr_writer :capabilities

      # Mapping of guardrail metric names to threshold values. Values are floating point
      # numbers (0.0-1.0) representing custom thresholds.
      sig { returns(T.nilable(T::Hash[Symbol, Float])) }
      attr_reader :custom_hallucination_threshold_values

      sig do
        params(
          custom_hallucination_threshold_values: T::Hash[Symbol, Float]
        ).void
      end
      attr_writer :custom_hallucination_threshold_values

      # List of files available to the event, if any. Will only be present if
      # `file_search` is enabled.
      sig do
        returns(
          T.nilable(T::Array[Deeprails::WorkflowEventDetailResponse::File])
        )
      end
      attr_reader :files

      sig do
        params(
          files: T::Array[Deeprails::WorkflowEventDetailResponse::File::OrHash]
        ).void
      end
      attr_writer :files

      sig do
        params(
          evaluation_history:
            T::Array[
              Deeprails::WorkflowEventDetailResponse::EvaluationHistory::OrHash
            ],
          evaluation_result: T::Hash[Symbol, T.anything],
          event_id: String,
          event_status:
            Deeprails::WorkflowEventDetailResponse::EventStatus::OrSymbol,
          filtered: T::Boolean,
          improved_model_output: String,
          improvement_action:
            Deeprails::WorkflowEventDetailResponse::ImprovementAction::OrSymbol,
          improvement_tool_status:
            T.nilable(
              Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::OrSymbol
            ),
          threshold_type:
            Deeprails::WorkflowEventDetailResponse::ThresholdType::OrSymbol,
          workflow_id: String,
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          capabilities:
            T::Array[
              Deeprails::WorkflowEventDetailResponse::Capability::OrHash
            ],
          custom_hallucination_threshold_values: T::Hash[Symbol, Float],
          files: T::Array[Deeprails::WorkflowEventDetailResponse::File::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # History of evaluations for the event.
        evaluation_history:,
        # Evaluation result consisting of average scores and rationales for each of the
        # evaluated guardrail metrics.
        evaluation_result:,
        # A unique workflow event ID.
        event_id:,
        # Status of the event.
        event_status:,
        # Whether the event was filtered and requires improvement.
        filtered:,
        # Improved model output after improvement tool was applied and each metric passed
        # evaluation.
        improved_model_output:,
        # Type of improvement action used to improve the event.
        improvement_action:,
        # Status of the improvement tool used to improve the event.
        improvement_tool_status:,
        # Type of thresholds used to evaluate the event.
        threshold_type:,
        # Workflow ID associated with the event.
        workflow_id:,
        # Mapping of guardrail metric names to tolerance values. Values are strings
        # (`low`, `medium`, `high`) representing automatic tolerance levels.
        automatic_hallucination_tolerance_levels: nil,
        # Extended AI capabilities available to the event, if any. Can be `web_search`
        # and/or `file_search`.
        capabilities: nil,
        # Mapping of guardrail metric names to threshold values. Values are floating point
        # numbers (0.0-1.0) representing custom thresholds.
        custom_hallucination_threshold_values: nil,
        # List of files available to the event, if any. Will only be present if
        # `file_search` is enabled.
        files: nil
      )
      end

      sig do
        override.returns(
          {
            evaluation_history:
              T::Array[
                Deeprails::WorkflowEventDetailResponse::EvaluationHistory
              ],
            evaluation_result: T::Hash[Symbol, T.anything],
            event_id: String,
            event_status:
              Deeprails::WorkflowEventDetailResponse::EventStatus::TaggedSymbol,
            filtered: T::Boolean,
            improved_model_output: String,
            improvement_action:
              Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol,
            improvement_tool_status:
              T.nilable(
                Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
              ),
            threshold_type:
              Deeprails::WorkflowEventDetailResponse::ThresholdType::TaggedSymbol,
            workflow_id: String,
            automatic_hallucination_tolerance_levels:
              T::Hash[
                Symbol,
                Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
              ],
            capabilities:
              T::Array[Deeprails::WorkflowEventDetailResponse::Capability],
            custom_hallucination_threshold_values: T::Hash[Symbol, Float],
            files: T::Array[Deeprails::WorkflowEventDetailResponse::File]
          }
        )
      end
      def to_hash
      end

      class EvaluationHistory < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::WorkflowEventDetailResponse::EvaluationHistory,
              Deeprails::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :attempt

        sig { params(attempt: String).void }
        attr_writer :attempt

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :evaluation_result

        sig { params(evaluation_result: T::Hash[Symbol, T.anything]).void }
        attr_writer :evaluation_result

        sig { returns(T.nilable(String)) }
        attr_reader :evaluation_status

        sig { params(evaluation_status: String).void }
        attr_writer :evaluation_status

        sig { returns(T.nilable(Float)) }
        attr_reader :evaluation_total_cost

        sig { params(evaluation_total_cost: Float).void }
        attr_writer :evaluation_total_cost

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :guardrail_metrics

        sig { params(guardrail_metrics: T::Array[String]).void }
        attr_writer :guardrail_metrics

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :model_input

        sig { params(model_input: T::Hash[Symbol, T.anything]).void }
        attr_writer :model_input

        sig { returns(T.nilable(String)) }
        attr_reader :model_output

        sig { params(model_output: String).void }
        attr_writer :model_output

        sig { returns(T.nilable(Time)) }
        attr_reader :modified_at

        sig { params(modified_at: Time).void }
        attr_writer :modified_at

        sig { returns(T.nilable(String)) }
        attr_reader :nametag

        sig { params(nametag: String).void }
        attr_writer :nametag

        sig { returns(T.nilable(Integer)) }
        attr_reader :progress

        sig { params(progress: Integer).void }
        attr_writer :progress

        sig { returns(T.nilable(String)) }
        attr_reader :run_mode

        sig { params(run_mode: String).void }
        attr_writer :run_mode

        sig do
          params(
            attempt: String,
            created_at: Time,
            error_message: String,
            evaluation_result: T::Hash[Symbol, T.anything],
            evaluation_status: String,
            evaluation_total_cost: Float,
            guardrail_metrics: T::Array[String],
            model_input: T::Hash[Symbol, T.anything],
            model_output: String,
            modified_at: Time,
            nametag: String,
            progress: Integer,
            run_mode: String
          ).returns(T.attached_class)
        end
        def self.new(
          attempt: nil,
          created_at: nil,
          error_message: nil,
          evaluation_result: nil,
          evaluation_status: nil,
          evaluation_total_cost: nil,
          guardrail_metrics: nil,
          model_input: nil,
          model_output: nil,
          modified_at: nil,
          nametag: nil,
          progress: nil,
          run_mode: nil
        )
        end

        sig do
          override.returns(
            {
              attempt: String,
              created_at: Time,
              error_message: String,
              evaluation_result: T::Hash[Symbol, T.anything],
              evaluation_status: String,
              evaluation_total_cost: Float,
              guardrail_metrics: T::Array[String],
              model_input: T::Hash[Symbol, T.anything],
              model_output: String,
              modified_at: Time,
              nametag: String,
              progress: Integer,
              run_mode: String
            }
          )
        end
        def to_hash
        end
      end

      # Status of the event.
      module EventStatus
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::WorkflowEventDetailResponse::EventStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_PROGRESS =
          T.let(
            :"In Progress",
            Deeprails::WorkflowEventDetailResponse::EventStatus::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :Completed,
            Deeprails::WorkflowEventDetailResponse::EventStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::WorkflowEventDetailResponse::EventStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Type of improvement action used to improve the event.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::WorkflowEventDetailResponse::ImprovementAction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGEN =
          T.let(
            :regen,
            Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
            Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol
          )
        DO_NOTHING =
          T.let(
            :do_nothing,
            Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::WorkflowEventDetailResponse::ImprovementAction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of the improvement tool used to improve the event.
      module ImprovementToolStatus
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMPROVED =
          T.let(
            :improved,
            Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
          )
        FAILED_ON_MAX_RETRIES =
          T.let(
            :"failed on max retries",
            Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
          )
        IMPROVEMENT_REQUIRED =
          T.let(
            :improvement_required,
            Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::WorkflowEventDetailResponse::ImprovementToolStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Type of thresholds used to evaluate the event.
      module ThresholdType
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::WorkflowEventDetailResponse::ThresholdType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOM =
          T.let(
            :custom,
            Deeprails::WorkflowEventDetailResponse::ThresholdType::TaggedSymbol
          )
        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::WorkflowEventDetailResponse::ThresholdType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::WorkflowEventDetailResponse::ThresholdType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::WorkflowEventDetailResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Capability < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::WorkflowEventDetailResponse::Capability,
              Deeprails::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :capability

        sig { params(capability: String).void }
        attr_writer :capability

        sig { params(capability: String).returns(T.attached_class) }
        def self.new(capability: nil)
        end

        sig { override.returns({ capability: String }) }
        def to_hash
        end
      end

      class File < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::WorkflowEventDetailResponse::File,
              Deeprails::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :file_id

        sig { params(file_id: String).void }
        attr_writer :file_id

        sig { returns(T.nilable(String)) }
        attr_reader :file_name

        sig { params(file_name: String).void }
        attr_writer :file_name

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
        def self.new(file_id: nil, file_name: nil, file_size: nil)
        end

        sig do
          override.returns(
            { file_id: String, file_name: String, file_size: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
