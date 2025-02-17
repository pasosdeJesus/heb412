# frozen_string_literal: true

require "test_helper"

class PuedeVerHogarTest < ActionDispatch::IntegrationTest
  test "hogar con contenido" do
    get Rails.configuration.relative_url_root
    # byebug
    assert_response :success
    # puts response.body
    # assert_select "li" "Acerca de"
  end
end
