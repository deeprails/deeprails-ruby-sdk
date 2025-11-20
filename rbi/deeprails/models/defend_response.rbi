# typed: strong

module Deeprails
  module Models
    class DefendResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Deeprails::DefendResponse, Deeprails::Internal::AnyHash)
        end

      # Mapping of guardrail metric names to tolerance values. Values can be strings
      # (`low`, `medium`, `high`) for automatic tolerance levels.
      sig do
        returns(
          T::Hash[
            Symbol,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          ]
        )
      end
      attr_accessor :automatic_hallucination_tolerance_levels

      # Extended AI capabilities available to the event, if any. Can be `web_search`
      # and/or `file_search`.
      sig { returns(T::Array[Deeprails::DefendResponse::Capability]) }
      attr_accessor :capabilities

      # The time the workflow was created in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # Mapping of guardrail metric names to threshold values. Values can be floating
      # point numbers (0.0-1.0) for custom thresholds.
      sig { returns(T::Hash[Symbol, Float]) }
      attr_accessor :custom_hallucination_threshold_values

      # A description for the workflow, to help you remember what that workflow means to
      # your organization.
      sig { returns(String) }
      attr_accessor :description

      # An array of events associated with this workflow.
      sig { returns(T::Array[Deeprails::DefendResponse::Event]) }
      attr_accessor :events

      # List of files associated with the workflow. If this is not empty, models can
      # search these files when performing evaluations or remediations
      sig { returns(T::Array[Deeprails::DefendResponse::File]) }
      attr_accessor :files

      # A human-readable name for the workflow that will correspond to it's workflow ID.
      sig { returns(String) }
      attr_accessor :name

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      sig { returns(Deeprails::DefendResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Type of thresholds used to evaluate the event.
      sig { returns(Deeprails::DefendResponse::ThresholdType::TaggedSymbol) }
      attr_accessor :threshold_type

      # The most recent time the workflow was updated in UTC.
      sig { returns(Time) }
      attr_accessor :updated_at

      # A unique workflow ID used to identify the workflow in other endpoints.
      sig { returns(String) }
      attr_accessor :workflow_id

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events.
      sig do
        returns(
          T.nilable(Deeprails::DefendResponse::ImprovementAction::TaggedSymbol)
        )
      end
      attr_reader :improvement_action

      sig do
        params(
          improvement_action:
            Deeprails::DefendResponse::ImprovementAction::OrSymbol
        ).void
      end
      attr_writer :improvement_action

      sig { returns(T.nilable(Deeprails::DefendResponse::Stats)) }
      attr_reader :stats

      sig { params(stats: Deeprails::DefendResponse::Stats::OrHash).void }
      attr_writer :stats

      sig do
        params(
          automatic_hallucination_tolerance_levels:
            T::Hash[
              Symbol,
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::OrSymbol
            ],
          capabilities: T::Array[Deeprails::DefendResponse::Capability::OrHash],
          created_at: Time,
          custom_hallucination_threshold_values: T::Hash[Symbol, Float],
          description: String,
          events: T::Array[Deeprails::DefendResponse::Event::OrHash],
          files: T::Array[Deeprails::DefendResponse::File::OrHash],
          name: String,
          status: Deeprails::DefendResponse::Status::OrSymbol,
          threshold_type: Deeprails::DefendResponse::ThresholdType::OrSymbol,
          updated_at: Time,
          workflow_id: String,
          improvement_action:
            Deeprails::DefendResponse::ImprovementAction::OrSymbol,
          stats: Deeprails::DefendResponse::Stats::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Mapping of guardrail metric names to tolerance values. Values can be strings
        # (`low`, `medium`, `high`) for automatic tolerance levels.
        automatic_hallucination_tolerance_levels:,
        # Extended AI capabilities available to the event, if any. Can be `web_search`
        # and/or `file_search`.
        capabilities:,
        # The time the workflow was created in UTC.
        created_at:,
        # Mapping of guardrail metric names to threshold values. Values can be floating
        # point numbers (0.0-1.0) for custom thresholds.
        custom_hallucination_threshold_values:,
        # A description for the workflow, to help you remember what that workflow means to
        # your organization.
        description:,
        # An array of events associated with this workflow.
        events:,
        # List of files associated with the workflow. If this is not empty, models can
        # search these files when performing evaluations or remediations
        files:,
        # A human-readable name for the workflow that will correspond to it's workflow ID.
        name:,
        # Status of the selected workflow. May be `inactive` or `active`. Inactive
        # workflows will not accept events.
        status:,
        # Type of thresholds used to evaluate the event.
        threshold_type:,
        # The most recent time the workflow was updated in UTC.
        updated_at:,
        # A unique workflow ID used to identify the workflow in other endpoints.
        workflow_id:,
        # The action used to improve outputs that fail one or more guardrail metrics for
        # the workflow events.
        improvement_action: nil,
        stats: nil
      )
      end

      sig do
        override.returns(
          {
            automatic_hallucination_tolerance_levels:
              T::Hash[
                Symbol,
                Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
              ],
            capabilities: T::Array[Deeprails::DefendResponse::Capability],
            created_at: Time,
            custom_hallucination_threshold_values: T::Hash[Symbol, Float],
            description: String,
            events: T::Array[Deeprails::DefendResponse::Event],
            files: T::Array[Deeprails::DefendResponse::File],
            name: String,
            status: Deeprails::DefendResponse::Status::TaggedSymbol,
            threshold_type:
              Deeprails::DefendResponse::ThresholdType::TaggedSymbol,
            updated_at: Time,
            workflow_id: String,
            improvement_action:
              Deeprails::DefendResponse::ImprovementAction::TaggedSymbol,
            stats: Deeprails::DefendResponse::Stats
          }
        )
      end
      def to_hash
      end

      module AutomaticHallucinationToleranceLevel
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOW =
          T.let(
            :low,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        MEDIUM =
          T.let(
            :medium,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )
        HIGH =
          T.let(
            :high,
            Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::DefendResponse::AutomaticHallucinationToleranceLevel::TaggedSymbol
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
              Deeprails::DefendResponse::Capability,
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

      class Event < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::DefendResponse::Event,
              Deeprails::Internal::AnyHash
            )
          end

        # An array of evaluations for this event.
        sig do
          returns(
            T.nilable(T::Array[Deeprails::DefendResponse::Event::Evaluation])
          )
        end
        attr_reader :evaluations

        sig do
          params(
            evaluations:
              T::Array[Deeprails::DefendResponse::Event::Evaluation::OrHash]
          ).void
        end
        attr_writer :evaluations

        # A unique workflow event ID.
        sig { returns(T.nilable(String)) }
        attr_reader :event_id

        sig { params(event_id: String).void }
        attr_writer :event_id

        # Improved model output after improvement tool was applied.
        sig { returns(T.nilable(String)) }
        attr_reader :improved_model_output

        sig { params(improved_model_output: String).void }
        attr_writer :improved_model_output

        # Status of the improvement tool used to improve the event.
        sig { returns(T.nilable(String)) }
        attr_reader :improvement_tool_status

        sig { params(improvement_tool_status: String).void }
        attr_writer :improvement_tool_status

        sig do
          params(
            evaluations:
              T::Array[Deeprails::DefendResponse::Event::Evaluation::OrHash],
            event_id: String,
            improved_model_output: String,
            improvement_tool_status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of evaluations for this event.
          evaluations: nil,
          # A unique workflow event ID.
          event_id: nil,
          # Improved model output after improvement tool was applied.
          improved_model_output: nil,
          # Status of the improvement tool used to improve the event.
          improvement_tool_status: nil
        )
        end

        sig do
          override.returns(
            {
              evaluations:
                T::Array[Deeprails::DefendResponse::Event::Evaluation],
              event_id: String,
              improved_model_output: String,
              improvement_tool_status: String
            }
          )
        end
        def to_hash
        end

        class Evaluation < Deeprails::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Deeprails::DefendResponse::Event::Evaluation,
                Deeprails::Internal::AnyHash
              )
            end

          # The attempt number or identifier for this evaluation.
          sig { returns(T.nilable(String)) }
          attr_reader :attempt

          sig { params(attempt: String).void }
          attr_writer :attempt

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

          # The result of the evaluation.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :evaluation_result

          sig { params(evaluation_result: T::Hash[Symbol, T.anything]).void }
          attr_writer :evaluation_result

          # Status of the evaluation.
          sig { returns(T.nilable(String)) }
          attr_reader :evaluation_status

          sig { params(evaluation_status: String).void }
          attr_writer :evaluation_status

          # Total cost of the evaluation.
          sig { returns(T.nilable(Float)) }
          attr_reader :evaluation_total_cost

          sig { params(evaluation_total_cost: Float).void }
          attr_writer :evaluation_total_cost

          # An array of guardrail metrics evaluated.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :guardrail_metrics

          sig { params(guardrail_metrics: T::Array[String]).void }
          attr_writer :guardrail_metrics

          # The model input used for the evaluation.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :model_input

          sig { params(model_input: T::Hash[Symbol, T.anything]).void }
          attr_writer :model_input

          # The model output that was evaluated.
          sig { returns(T.nilable(String)) }
          attr_reader :model_output

          sig { params(model_output: String).void }
          attr_writer :model_output

          # The time the evaluation was last modified in UTC.
          sig { returns(T.nilable(Time)) }
          attr_reader :modified_at

          sig { params(modified_at: Time).void }
          attr_writer :modified_at

          # An optional tag for the evaluation.
          sig { returns(T.nilable(String)) }
          attr_reader :nametag

          sig { params(nametag: String).void }
          attr_writer :nametag

          # Evaluation progress (0-100).
          sig { returns(T.nilable(Integer)) }
          attr_reader :progress

          sig { params(progress: Integer).void }
          attr_writer :progress

          # Run mode used for the evaluation.
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
            # The attempt number or identifier for this evaluation.
            attempt: nil,
            # The time the evaluation was created in UTC.
            created_at: nil,
            # Error message if the evaluation failed.
            error_message: nil,
            # The result of the evaluation.
            evaluation_result: nil,
            # Status of the evaluation.
            evaluation_status: nil,
            # Total cost of the evaluation.
            evaluation_total_cost: nil,
            # An array of guardrail metrics evaluated.
            guardrail_metrics: nil,
            # The model input used for the evaluation.
            model_input: nil,
            # The model output that was evaluated.
            model_output: nil,
            # The time the evaluation was last modified in UTC.
            modified_at: nil,
            # An optional tag for the evaluation.
            nametag: nil,
            # Evaluation progress (0-100).
            progress: nil,
            # Run mode used for the evaluation.
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
      end

      class File < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Deeprails::DefendResponse::File, Deeprails::Internal::AnyHash)
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

      # Status of the selected workflow. May be `inactive` or `active`. Inactive
      # workflows will not accept events.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Deeprails::DefendResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INACTIVE =
          T.let(:inactive, Deeprails::DefendResponse::Status::TaggedSymbol)
        ACTIVE = T.let(:active, Deeprails::DefendResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::Status::TaggedSymbol]
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
            T.all(Symbol, Deeprails::DefendResponse::ThresholdType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOM =
          T.let(:custom, Deeprails::DefendResponse::ThresholdType::TaggedSymbol)
        AUTOMATIC =
          T.let(
            :automatic,
            Deeprails::DefendResponse::ThresholdType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::ThresholdType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The action used to improve outputs that fail one or more guardrail metrics for
      # the workflow events.
      module ImprovementAction
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::DefendResponse::ImprovementAction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGEN =
          T.let(
            :regen,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )
        FIXIT =
          T.let(
            :fixit,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )
        DO_NOTHING =
          T.let(
            :do_nothing,
            Deeprails::DefendResponse::ImprovementAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Deeprails::DefendResponse::ImprovementAction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Stats < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::DefendResponse::Stats,
              Deeprails::Internal::AnyHash
            )
          end

        # Number of AI outputs that failed the guardrails.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_below_threshold

        sig { params(outputs_below_threshold: Integer).void }
        attr_writer :outputs_below_threshold

        # Number of AI outputs that were improved.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_improved

        sig { params(outputs_improved: Integer).void }
        attr_writer :outputs_improved

        # Total number of AI outputs processed by the workflow.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outputs_processed

        sig { params(outputs_processed: Integer).void }
        attr_writer :outputs_processed

        sig do
          params(
            outputs_below_threshold: Integer,
            outputs_improved: Integer,
            outputs_processed: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of AI outputs that failed the guardrails.
          outputs_below_threshold: nil,
          # Number of AI outputs that were improved.
          outputs_improved: nil,
          # Total number of AI outputs processed by the workflow.
          outputs_processed: nil
        )
        end

        sig do
          override.returns(
            {
              outputs_below_threshold: Integer,
              outputs_improved: Integer,
              outputs_processed: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
