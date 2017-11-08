# encoding: UTF-8

require 'uri'
require 'openssl'
require 'prometheus/alert_buffer_client/client'

module Prometheus
  # Alert Client is a ruby implementation for a Prometheus-alert-buffer client.
  module AlertBufferClient
    def self.client(options = {})
      Client.new(options)
    end
  end
end
