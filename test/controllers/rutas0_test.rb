# frozen_string_literal: true

require "test_helper"

class Rutas0Test < ActionDispatch::IntegrationTest
  test "personas_path usable" do
    assert_equal "#{ENV.fetch("RUTA_RELATIVA")}personas", msip.personas_path
  end
end
