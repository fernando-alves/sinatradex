require 'bundler'
Bundler.require :default

Dir['./app/**/*.rb'].each { |file| require File.join(File.dirname(__FILE__), file) }
run Sinatra::Application