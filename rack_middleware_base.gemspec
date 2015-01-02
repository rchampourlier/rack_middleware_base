# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack_middleware_base/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack_middleware_base'
  spec.version       = RackMiddlewareBase::VERSION
  spec.authors       = ['Romain Champourlier']
  spec.email         = ['romain@softr.li']
  spec.summary       = %q{A basic Rack middleware project, ready to become any middleware you need, as a gem.}
  spec.homepage      = 'https://github.com/rchampourlier/rack_middleware_base'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'

  spec.add_dependency 'rack'
end
