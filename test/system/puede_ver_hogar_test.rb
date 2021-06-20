# encoding: UTF-8

require "application_system_test_case"

class PuedeVerHogarTest < ApplicationSystemTestCase

  test "hogar con contenido" do 
    visit Rails.configuration.relative_url_root
    take_screenshot
    assert page.has_content?("Heb412")
  end

end
