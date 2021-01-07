require "test_helper"

class RutasTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Sip::Engine.routes.url_helpers

  test "respond_to? da verdadero erradamente" do
    usuario = @current_usuario = ::Usuario.find(1)
    get '/heb412/usuarios/sign_in'
    sign_in usuario
    post '/heb412/usuarios/sign_in'
    follow_redirect!
    assert_response :success
    #puts response.body
    raiz = Rails.configuration.relative_url_root 
    ruta = personas_prueba61pr2_path.sub("#{raiz}#{raiz}/", "#{raiz}/")
    get ruta
    assert_response :success
    #puts response.body
  end

end
