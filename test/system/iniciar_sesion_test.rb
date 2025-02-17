# frozen_string_literal: true

require "application_system_test_case"

class IniciarSesionTest < ApplicationSystemTestCase
  test "iniciar sesión" do
    puts "root_path=#{root_path}"
    Msip::CapybaraHelper.iniciar_sesion(self, "/heb412", "heb412", "heb412")
  end
end
