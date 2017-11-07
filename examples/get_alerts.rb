require 'prometheus/alert_buffer_client'

# returns a client
prometheus = Prometheus::AlertBufferClient::Client.new(url: 'http://localhost:9099', path: '/topics/zgalor')

alerts = prometheus.get(generation_id: '12497ca8-b597-4590-ac5d-d55af7f3d185', from_index: 5)
puts alerts
