class Ability  < Heb412Gen::Ability

  def acciones_plantillas
  end

  # Autorizacion con CanCanCan
  def initialize(usuario = nil)
    initialize_heb412_gen(usuario)
  end

end

