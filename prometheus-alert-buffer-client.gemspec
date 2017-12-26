# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'prometheus/alert_buffer_client/version'

Gem::Specification.new do |s|
  s.name              = 'prometheus-alert-buffer-client'
  s.version           = Prometheus::AlertBufferClient::VERSION
  s.summary           = 'A suite of reading alerts stored on ' \
                        'a Prometheus Alert Buffer server.'
  s.authors           = ['Zohar Galor', 'Yaacov Zamir']
  s.email             = ['zgalor@redhat.com']
  s.homepage          = 'https://github.com/openshift/prometheus-alert-buffer-client-ruby'
  s.license           = 'Apache-2.0'

  s.files             = %w(README.md) + Dir.glob('{lib/**/*}')
  s.require_paths     = ['lib']

  s.add_dependency 'faraday', '~> 0.9.2'
end
