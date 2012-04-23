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
  gem.add_dependency 'resque'
  gem.add_dependency 'resque-scheduler'
  gem.add_dependency 'activesupport' #, :require => 'active_support'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
end
