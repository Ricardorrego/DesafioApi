require 'byebug'
require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'faker'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

Dir[File.join(File.dirname(__FILE__),
              '../services/*.rb')].each { |file| require_relative file }

# adiciono a url dentro do modulo.
Service.var_url = CONFIG['url02']
