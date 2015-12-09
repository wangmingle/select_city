# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'select_city/version'

Gem::Specification.new do |spec|
  spec.name          = "select_city"
  spec.version       = SelectCity::VERSION
  spec.authors       = ["wangmingle"]
  spec.email         = ["wangmingle@jazznet.cn"]

  spec.summary       = "a gem used for select_option"
  spec.description   = "a gem used for select_option"
  spec.homepage      = "https://github.com/wangmingle/select_city"
  spec.license       = "MIT"
  

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
