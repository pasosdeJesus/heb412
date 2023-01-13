require "test_helper"

class RutasTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Msip::Engine.routes.url_helpers

  # ejemplo con base en https://medium.com/@yutafujii_59175/a-simple-login-test-with-rails-devise-and-unit-test-68bc4fade4ba
  test "personas_path usable" do 
    assert_equal '/heb412/personas', personas_path
    usuario = @current_usuario = ::Usuario.find(1)
    get '/heb412/usuarios/sign_in'
    sign_in usuario
    post '/heb412/usuarios/sign_in'
    follow_redirect!
    assert_response :success
    #puts response.body
    get personas_path
    assert_response :success
    #puts response.body
  end

end
