# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cenit_ruby/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = "cenit_ruby"
  spec.version       = CenitRuby::VERSION
  spec.authors       = ['Asnioby Hernandez','Maikel Arcia','Miguel Sancho']
  spec.email         = ['asnioby@gmail.com','macarci@gmail.com', 'sanchojaf@gmail.com']
  spec.summary       = %q{ Ruby client for pushing data to CenitHub }
  spec.description   = %q{ Ruby client for pushing data to CenitHub }
  spec.homepage      = "https://github.com/openjaf/cenit_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'active_model_serializers'
  spec.add_dependency 'httparty'
end
