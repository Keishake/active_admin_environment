# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin_environment/version'

Gem::Specification.new do |spec|
  spec.name          = "active_admin_environment"
  spec.version       = ActiveAdminEnvironment::VERSION
  spec.authors       = ["Keishake"]
  spec.email         = ["keishake0925@gmail.com"]
  spec.description   = %q{Change ActiveAdmin page style by environment}
  spec.summary       = %q{Change ActiveAdmin page style by environment}
  spec.homepage      = "https://github.com/Keishake/active_admin_environment"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activeadmin', '>= 0.4.4'
  spec.add_dependency "railties", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

end
