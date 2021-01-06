require "test_helper"

class RutasTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Sip::Engine.routes.url_helpers

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
