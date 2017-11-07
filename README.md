# Prometheus Alert Buffer Ruby Client
A Ruby library for reading alerts stored on a Prometheus Alert Buffer server.

## Usage
### Overview

require 'prometheus/alert_buffer_client'

\# return a client for host http://example.com:9099/topics/alerts

prometheus = Prometheus::AlertBufferClient.client(url: 'http://example.com:9099')

### Changing alerts path

\# return a client for host http://example.com:9099/topics/topic1

prometheus = Prometheus::AlertBufferClient.client(url: 'http://example.com:9090', path: '/topics/topic1')

### Authentication proxy

If an authentication proxy ( e.g. oauth2 ) is used in a layer above the prometheus-alert-buffer REST server, this client can use ssl and authentication headers.

\# return a client for host https://example.com/topics/alerts using a Bearer token "TopSecret"

prometheus = Prometheus::AlertBufferClient.client(url: 'https://example.com:443',
                                          credentials: { token: 'TopSecret' })

### Api calls

#### Reading alerts
\# get all the alerts from server

alerts = prometheus.get()

#### Reading latest alerts
\# get all the alerts with generation_id='12497ca8-b597-4590-ac5d-d55af7f3d185' and index >= 34

alerts = prometheus.get(generation_id: '12497ca8-b597-4590-ac5d-d55af7f3d185', from_index: 34)

Alerts will be returned in a Hash with following keys:
* generationID
* messages

#### Posting alerts
\# post an alert JSON to server

alerts = prometheus.post('{"alertId":12}')
