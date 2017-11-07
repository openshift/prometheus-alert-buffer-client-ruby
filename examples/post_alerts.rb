require 'prometheus/alert_buffer_client'

# returns a client
prometheus = Prometheus::AlertBufferClient::Client.new(url: 'http://localhost:9099', path: '/topics/test')

prometheus.post '{"posted":"alert"}'
prometheus.post '{"alertId":12}'

