ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
#require "#{Rails.root}/db/seeds.rb"

class ActiveSupport::TestCase

#  setup :load_seeds

  #set_fixture_class sip_tclase: "Sip::Tclase"
  set_fixture_class "sip/tsitio": Sip::Tsitio

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #fixtures :all
  
  #Rails.application.load_seed

  # Add more helper methods to be used by all tests here...
  protected
  def load_seeds
    load "#{Rails.root}/db/seeds.rb"
  end
end
