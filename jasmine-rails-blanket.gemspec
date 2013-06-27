# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jasmine-rails-blanket/version'

Gem::Specification.new do |spec|
  spec.name = "jasmine-rails-blanket"
  spec.version = Jasmine::Rails::Blanket::VERSION
  spec.authors = ["Andrew Delpha"]
  spec.email = ["delpha@computer.org"]
  spec.description = %q{Adds support to jasmine-rails for blanketjs}
  spec.summary = %q{This gem adds support for running blanketjs code coverage to jasmine-rails}
  spec.homepage = ""
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "jasmine-rails", ">= 0.4.5"
end
