require 'rubygems'
require 'bundler/setup'

Bundler.require
require 'patella'
require 'test/unit'
require 'active_support'
require 'active_support/test_case'
require 'json'
require 'mocha'

unless defined?(Rails)
module Rails
  class MockCache
    def fetch(*args)
      yield
    end
    def write(*args)
    end
  end

  def self.caching=(value)
    @caching=value
  end

  def self.caching?
    @caching
  end
  def self.cache
    @cache ||= MockCache.new
  end
end
end