# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'panoptes/version'

Gem::Specification.new do |spec|
  spec.name          = "panoptes"
  spec.version       = Panoptes::VERSION
  spec.authors       = ["Colin Rymer", "Daniel Searles"]
  spec.email         = ["colin.rymer@gmail.com", "daniel.paul.searles@gmail.com"]

  spec.summary       = %q{A watcher of services.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/spartansystems/panoptes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
