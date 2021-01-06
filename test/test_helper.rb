# encoding: utf-8

ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  fixtures :all

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  protected

  def load_seeds
    load "#{Rails.root}/db/seeds.rb"
  end

  
end

