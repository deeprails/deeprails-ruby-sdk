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

      # @!attribute monitor_status
      #   Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      #   longer record and evaluate events.
      #
      #   @return [Symbol, Deeprails::Models::MonitorDetailResponse::MonitorStatus]
      required :monitor_status, enum: -> { Deeprails::MonitorDetailResponse::MonitorStatus }

      # @!attribute name
      #   Name of this monitor.
      #
      #   @return [String]
      required :name, String

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
      #   @return [Array<Deeprails::Models::Evaluation>, nil]
      optional :evaluations, -> { Deeprails::Internal::Type::ArrayOf[Deeprails::Evaluation] }

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

      # @!attribute user_id
      #   User ID of the user who created the monitor.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(monitor_id:, monitor_status:, name:, created_at: nil, description: nil, evaluations: nil, stats: nil, updated_at: nil, user_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Deeprails::Models::MonitorDetailResponse} for more details.
      #
      #   @param monitor_id [String] A unique monitor ID.
      #
      #   @param monitor_status [Symbol, Deeprails::Models::MonitorDetailResponse::MonitorStatus] Status of the monitor. Can be `active` or `inactive`. Inactive monitors no lon
      #
      #   @param name [String] Name of this monitor.
      #
      #   @param created_at [Time] The time the monitor was created in UTC.
      #
      #   @param description [String] Description of this monitor.
      #
      #   @param evaluations [Array<Deeprails::Models::Evaluation>] An array of all evaluations performed by this monitor. Each one corresponds to
      #
      #   @param stats [Deeprails::Models::MonitorDetailResponse::Stats] Contains five fields used for stats of this monitor: total evaluations, complete
      #
      #   @param updated_at [Time] The most recent time the monitor was modified in UTC.
      #
      #   @param user_id [String] User ID of the user who created the monitor.

      # Status of the monitor. Can be `active` or `inactive`. Inactive monitors no
      # longer record and evaluate events.
      #
      # @see Deeprails::Models::MonitorDetailResponse#monitor_status
      module MonitorStatus
        extend Deeprails::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
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
