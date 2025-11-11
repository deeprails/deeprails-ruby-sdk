# typed: strong

module Deeprails
  module Models
    class MonitorEventDetailResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Deeprails::MonitorEventDetailResponse,
            Deeprails::Internal::AnyHash
          )
        end

      # The capabilities associated with the monitor event.
      sig do
        returns(
          T.nilable(T::Array[Deeprails::MonitorEventDetailResponse::Capability])
        )
      end
      attr_reader :capabilities

      sig do
        params(
          capabilities:
            T::Array[Deeprails::MonitorEventDetailResponse::Capability::OrHash]
        ).void
      end
      attr_writer :capabilities

      # The time spent on the evaluation in seconds.
      sig { returns(T.nilable(String)) }
      attr_reader :eval_time

      sig { params(eval_time: String).void }
      attr_writer :eval_time

      # The result of the evaluation of the monitor event.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :evaluation_result

      sig { params(evaluation_result: T::Hash[Symbol, T.anything]).void }
      attr_writer :evaluation_result

      # A unique monitor event ID.
      sig { returns(T.nilable(String)) }
      attr_reader :event_id

      sig { params(event_id: String).void }
      attr_writer :event_id

      # The files associated with the monitor event.
      sig do
        returns(
          T.nilable(T::Array[Deeprails::MonitorEventDetailResponse::File])
        )
      end
      attr_reader :files

      sig do
        params(
          files: T::Array[Deeprails::MonitorEventDetailResponse::File::OrHash]
        ).void
      end
      attr_writer :files

      # The guardrail metrics evaluated by the monitor event.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :guardrail_metrics

      sig { params(guardrail_metrics: T::Array[String]).void }
      attr_writer :guardrail_metrics

      # The model input used to create the monitor event.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :model_input

      sig { params(model_input: T::Hash[Symbol, T.anything]).void }
      attr_writer :model_input

      # The output evaluated by the monitor event.
      sig { returns(T.nilable(String)) }
      attr_reader :model_output

      sig { params(model_output: String).void }
      attr_writer :model_output

      # Monitor ID associated with this event.
      sig { returns(T.nilable(String)) }
      attr_reader :monitor_id

      sig { params(monitor_id: String).void }
      attr_writer :monitor_id

      # A human-readable tag for the monitor event.
      sig { returns(T.nilable(String)) }
      attr_reader :nametag

      sig { params(nametag: String).void }
      attr_writer :nametag

      # The run mode used to evaluate the monitor event.
      sig do
        returns(
          T.nilable(
            Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
          )
        )
      end
      attr_reader :run_mode

      sig do
        params(
          run_mode: Deeprails::MonitorEventDetailResponse::RunMode::OrSymbol
        ).void
      end
      attr_writer :run_mode

      # Status of the monitor event's evaluation.
      sig do
        returns(
          T.nilable(Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Deeprails::MonitorEventDetailResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # The time the monitor event was created in UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      sig do
        params(
          capabilities:
            T::Array[Deeprails::MonitorEventDetailResponse::Capability::OrHash],
          eval_time: String,
          evaluation_result: T::Hash[Symbol, T.anything],
          event_id: String,
          files: T::Array[Deeprails::MonitorEventDetailResponse::File::OrHash],
          guardrail_metrics: T::Array[String],
          model_input: T::Hash[Symbol, T.anything],
          model_output: String,
          monitor_id: String,
          nametag: String,
          run_mode: Deeprails::MonitorEventDetailResponse::RunMode::OrSymbol,
          status: Deeprails::MonitorEventDetailResponse::Status::OrSymbol,
          timestamp: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The capabilities associated with the monitor event.
        capabilities: nil,
        # The time spent on the evaluation in seconds.
        eval_time: nil,
        # The result of the evaluation of the monitor event.
        evaluation_result: nil,
        # A unique monitor event ID.
        event_id: nil,
        # The files associated with the monitor event.
        files: nil,
        # The guardrail metrics evaluated by the monitor event.
        guardrail_metrics: nil,
        # The model input used to create the monitor event.
        model_input: nil,
        # The output evaluated by the monitor event.
        model_output: nil,
        # Monitor ID associated with this event.
        monitor_id: nil,
        # A human-readable tag for the monitor event.
        nametag: nil,
        # The run mode used to evaluate the monitor event.
        run_mode: nil,
        # Status of the monitor event's evaluation.
        status: nil,
        # The time the monitor event was created in UTC.
        timestamp: nil
      )
      end

      sig do
        override.returns(
          {
            capabilities:
              T::Array[Deeprails::MonitorEventDetailResponse::Capability],
            eval_time: String,
            evaluation_result: T::Hash[Symbol, T.anything],
            event_id: String,
            files: T::Array[Deeprails::MonitorEventDetailResponse::File],
            guardrail_metrics: T::Array[String],
            model_input: T::Hash[Symbol, T.anything],
            model_output: String,
            monitor_id: String,
            nametag: String,
            run_mode:
              Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol,
            status: Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol,
            timestamp: Time
          }
        )
      end
      def to_hash
      end

      class Capability < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorEventDetailResponse::Capability,
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

      class File < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::MonitorEventDetailResponse::File,
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

      # The run mode used to evaluate the monitor event.
      module RunMode
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorEventDetailResponse::RunMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRECISION_PLUS =
          T.let(
            :precision_plus,
            Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
          )
        PRECISION =
          T.let(
            :precision,
            Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
          )
        SMART =
          T.let(
            :smart,
            Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
          )
        ECONOMY =
          T.let(
            :economy,
            Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorEventDetailResponse::RunMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of the monitor event's evaluation.
      module Status
        extend Deeprails::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Deeprails::MonitorEventDetailResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_PROGRESS =
          T.let(
            :in_progress,
            Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Deeprails::MonitorEventDetailResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
