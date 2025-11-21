# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "deeprails/version"
require_relative "deeprails/internal/util"
require_relative "deeprails/internal/type/converter"
require_relative "deeprails/internal/type/unknown"
require_relative "deeprails/internal/type/boolean"
require_relative "deeprails/internal/type/file_input"
require_relative "deeprails/internal/type/enum"
require_relative "deeprails/internal/type/union"
require_relative "deeprails/internal/type/array_of"
require_relative "deeprails/internal/type/hash_of"
require_relative "deeprails/internal/type/base_model"
require_relative "deeprails/internal/type/base_page"
require_relative "deeprails/internal/type/request_parameters"
require_relative "deeprails/internal"
require_relative "deeprails/request_options"
require_relative "deeprails/file_part"
require_relative "deeprails/errors"
require_relative "deeprails/internal/transport/base_client"
require_relative "deeprails/internal/transport/pooled_net_requester"
require_relative "deeprails/client"
require_relative "deeprails/models/defend_create_response"
require_relative "deeprails/models/defend_create_workflow_params"
require_relative "deeprails/models/defend_response"
require_relative "deeprails/models/defend_retrieve_event_params"
require_relative "deeprails/models/defend_retrieve_workflow_params"
require_relative "deeprails/models/defend_submit_event_params"
require_relative "deeprails/models/defend_update_response"
require_relative "deeprails/models/defend_update_workflow_params"
require_relative "deeprails/models/file_response"
require_relative "deeprails/models/file_upload_params"
require_relative "deeprails/models/monitor_create_params"
require_relative "deeprails/models/monitor_create_response"
require_relative "deeprails/models/monitor_detail_response"
require_relative "deeprails/models/monitor_event_detail_response"
require_relative "deeprails/models/monitor_event_response"
require_relative "deeprails/models/monitor_retrieve_event_params"
require_relative "deeprails/models/monitor_retrieve_params"
require_relative "deeprails/models/monitor_submit_event_params"
require_relative "deeprails/models/monitor_update_params"
require_relative "deeprails/models/monitor_update_response"
require_relative "deeprails/models/workflow_event_detail_response"
require_relative "deeprails/models/workflow_event_response"
require_relative "deeprails/models"
require_relative "deeprails/resources/defend"
require_relative "deeprails/resources/files"
require_relative "deeprails/resources/monitor"
