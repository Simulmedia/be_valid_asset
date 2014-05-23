# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'be_valid_asset/version'

Gem::Specification.new do |spec|
  spec.name          = "be_valid_asset"
  spec.version       = BeValidAsset::VERSION
  spec.authors       = ["Alex Tomlins", "Attila Gyorffy", "Ben Brinckerhoff", "Jolyon Pawlyn", "Sebastian de Castelberg"]
  spec.email         = ["github@unboxedconsulting.com"]
  spec.description   = %q{Provides be_valid_markup, be_valid_css and be_valid_feed matchers for RSpec controller and view tests.}
  spec.summary       = %q{Markup and asset validation for RSpec}
  spec.homepage      = "http://github.com/unboxed/be_valid_asset"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rspec"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec"

  # for gem deployment (http://feeds.feedburner.com/johnpwood)
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "geminabox"
end
