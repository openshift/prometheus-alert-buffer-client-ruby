# encoding: UTF-8

require 'prometheus/alert_buffer_client'

describe Prometheus::AlertBufferClient do
  describe '.client' do
    it 'return a client object' do
      client = Prometheus::AlertBufferClient.client(url: 'http://localhost:9099')

      expect(client).to be_a(Prometheus::AlertBufferClient::Client)
    end
  end
end
