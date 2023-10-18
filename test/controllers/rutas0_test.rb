require "test_helper"

class Rutas0Test < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Msip::Engine.routes.url_helpers

  test "personas_path usable" do 
    assert_equal '/heb412/personas', personas_path
  end

end
