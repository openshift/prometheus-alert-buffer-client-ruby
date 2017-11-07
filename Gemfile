source 'https://rubygems.org'

gemspec

def ruby_version?(constraint)
  Gem::Dependency.new('', constraint).match?('', RUBY_VERSION)
end

gem 'faraday'

group :test do
  gem 'json', '< 2.0' if ruby_version?('< 2.0')
  gem 'rake'
  gem 'rspec'
end
