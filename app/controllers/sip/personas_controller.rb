require 'sip/concerns/controllers/personas_controller'

class Sip::PersonasController < Heb412Gen::ModelosController

  include Sip::Concerns::Controllers::PersonasController
  include Sip::Engine.routes.url_helpers

  def vistas_manejadas
    ['Persona']
  end

  def index(c = nil)
    puts "OJO personas_path=#{personas_path}"
    index_sip(c)
  end

end
