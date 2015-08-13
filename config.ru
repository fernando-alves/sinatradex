require 'bundler'
Bundler.require :default

Mongoid.configure.connect_to('app_development')

Dir['./app/**/*.rb'].each { |file| require File.join(File.dirname(__FILE__), file) }

run Sinatra::Application