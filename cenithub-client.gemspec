# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cenithub/client/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = "cenithub-client"
  spec.version       = Cenithub::Client::VERSION
  spec.authors       = ["Asnioby Hernandez"]
  spec.email         = ["asnioby@gmail.com"]
  spec.summary       = %q{ Ruby client for pushing data to Cenit }
  spec.description   = spec.summary
  spec.homepage      = "http://www.cenitsaas.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'active_model_serializers'
  spec.add_dependency 'httparty'
end
