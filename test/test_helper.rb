ENV['RAILS_ENV'] ||= 'test'

require "simplecov_json_formatter"
require 'simplecov'
SimpleCov.formatter = SimpleCov::Formatter::JSONFormatter
SimpleCov.start 'rails'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  fixtures :all
  
  protected
  def load_seeds
    load "#{Rails.root}/db/seeds.rb"
  end
end
