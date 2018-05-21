# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_numbers"
  spec.version       = SimpleNumbers::VERSION
  spec.authors       = ["Ravi Mariya"]
  spec.email         = ["rm9492@outlook.com"]

  spec.summary       = 'Gem to format numbers'
  spec.description   = 'Gem to format numbers'
  spec.homepage      = 'https://github.com/ravimariya/simple_numbers'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
