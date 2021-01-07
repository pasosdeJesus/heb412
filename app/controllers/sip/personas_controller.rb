# encoding: UTF-8

require 'sip/concerns/controllers/personas_controller'

class Sip::PersonasController < Heb412Gen::ModelosController

  include Sip::Concerns::Controllers::PersonasController
  include Sip::Engine.routes.url_helpers

  def vistas_manejadas
    ['Persona']
  end

  def index(c = nil)
    puts personas_path
    super(c)
  end

  def prueba60pr2
    if main_app.respond_to?(:personas_path) && 
        main_app.methods.include?(:personas_path)
      puts "*** main_app.respond_to?(:personas_path) debería ser falso " + 
        "(como fuera de este controlador)"
      r=main_app.personas_path
      puts r
    end
  end

end
