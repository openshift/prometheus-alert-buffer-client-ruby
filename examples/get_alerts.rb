require 'prometheus/alert_buffer_client'

# returns a client
prometheus = Prometheus::AlertBufferClient::Client.new(url: 'http://localhost:9099', path: '/topics/test')

alerts = prometheus.get(generation_id: '12497ca8-b597-4590-ac5d-d55af7f3d185', from_index: 1)

puts "Generation Id: #{alerts['generationID']}"
puts "Alerts: #{alerts['messages']}"
