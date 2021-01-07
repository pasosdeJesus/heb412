require "test_helper"

class RutasTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "respond_to? da verdadero erradamente" do
    assert_not main_app.respond_to?(:personas_path)
    usuario = @current_usuario = ::Usuario.find(1)
    get '/heb412/usuarios/sign_in'
    sign_in usuario
    post '/heb412/usuarios/sign_in'
    follow_redirect!
    assert_response :success
    get '/heb412/personas'
    assert_response :success
    begin
      r=main_app.personas_path
    rescue NoMethodError => e
      assert_not main_app.respond_to?(:personas_path)
    end
  end

end
