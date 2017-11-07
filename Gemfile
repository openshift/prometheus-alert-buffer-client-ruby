source 'https://rubygems.org'

gemspec

def ruby_version?(constraint)
  Gem::Dependency.new('', constraint).match?('', RUBY_VERSION)
end

gem 'faraday'
gem 'faraday_middleware'

group :test do
  gem 'coveralls'
  gem 'json', '< 2.0' if ruby_version?('< 2.0')
  gem 'rake'
  gem 'rspec'
  gem 'rubocop', '< 0.42'
end
