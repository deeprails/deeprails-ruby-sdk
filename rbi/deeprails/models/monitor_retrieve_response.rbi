# typed: strong

module Deeprails
  module Models
    class MonitorRetrieveResponse < Deeprails::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Deeprails::Models::MonitorRetrieveResponse,
            Deeprails::Internal::AnyHash
          )
        end

      # Represents whether the request was completed successfully.
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Detailed response payload for retrieving a monitor and its evaluations.
      sig do
        returns(T.nilable(Deeprails::Models::MonitorRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Deeprails::Models::MonitorRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # The accompanying message for the request. Includes error details when
      # applicable.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Response wrapper for operations returning a MonitorDetailResponse.
      sig do
        params(
          success: T::Boolean,
          data: Deeprails::Models::MonitorRetrieveResponse::Data::OrHash,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents whether the request was completed successfully.
        success:,
        # Detailed response payload for retrieving a monitor and its evaluations.
        data: nil,
        # The accompanying message for the request. Includes error details when
        # applicable.
        message: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            data: Deeprails::Models::MonitorRetrieveResponse::Data,
            message: String
          }
        )
      end
      def to_hash
      end

      class Data < Deeprails::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Deeprails::Models::MonitorRetrieveResponse::Data,
              Deeprails::Internal::AnyHash
            )
          end

        # A unique monitor ID.
        sig { returns(String) }
        attr_accessor :monitor_id

        # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
        # longer record and evaluate events.
        sig do
          returns(
            Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::TaggedSymbol
          )
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
        sig { returns(T.nilable(T::Array[Deeprails::Evaluation])) }
        attr_reader :evaluations

        sig do
          params(evaluations: T::Array[Deeprails::Evaluation::OrHash]).void
        end
        attr_writer :evaluations

        # Contains five fields used for stats of this monitor: total evaluations,
        # completed evaluations, failed evaluations, queued evaluations, and in progress
        # evaluations.
        sig do
          returns(
            T.nilable(Deeprails::Models::MonitorRetrieveResponse::Data::Stats)
          )
        end
        attr_reader :stats

        sig do
          params(
            stats:
              Deeprails::Models::MonitorRetrieveResponse::Data::Stats::OrHash
          ).void
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

        # Detailed response payload for retrieving a monitor and its evaluations.
        sig do
          params(
            monitor_id: String,
            monitor_status:
              Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::OrSymbol,
            name: String,
            created_at: Time,
            description: String,
            evaluations: T::Array[Deeprails::Evaluation::OrHash],
            stats:
              Deeprails::Models::MonitorRetrieveResponse::Data::Stats::OrHash,
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
                Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::TaggedSymbol,
              name: String,
              created_at: Time,
              description: String,
              evaluations: T::Array[Deeprails::Evaluation],
              stats: Deeprails::Models::MonitorRetrieveResponse::Data::Stats,
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
              T.all(
                Symbol,
                Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Deeprails::Models::MonitorRetrieveResponse::Data::MonitorStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Stats < Deeprails::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Deeprails::Models::MonitorRetrieveResponse::Data::Stats,
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
end
