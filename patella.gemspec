# -*- encoding: utf-8 -*-
require File.expand_path('../lib/patella/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeff Dwyer"]
  gem.email         = ["jdwyer@patientslikeme.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "patella"
  gem.require_paths = ["lib"]
  gem.version       = Patella::VERSION
  gem.add_dependency 'resque', '1.19.0'
  gem.add_dependency 'activesupport', '2.3.12' #, :require => 'active_support'
  gem.add_dependency 'rails', '2.3.12' #, :require => 'active_support'
  gem.add_dependency 'json'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'mocha', '0.9.8'
end
