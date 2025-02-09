require 'heb412_gen/version'

Msip.setup do |config|
  config.ruta_anexos = ENV.fetch('MSIP_RUTA_ANEXOS', 
                                 "#{Rails.root}/archivos/anexos")
  config.ruta_volcados = ENV.fetch('MSIP_RUTA_VOLCADOS',
                                   "#{Rails.root}/archivos/bd")
  config.titulo = "Heb412 - #{Heb412Gen::VERSION}"
  config.descripcion = "Plantilla para una aplicación web con autenticación, nube y geografía de Colombia"
  config.codigofuente = "https://gitlab.com/pasosdeJesus/heb412"
  config.urlcontribuyentes = "https://gitlab.com/pasosdeJesus/heb412/-/graphs/main?ref_type=heads"
  config.urlcreditos = "https://gitlab.com/pasosdeJesus/heb412/-/blob/main/CREDITOS.md"
  config.agradecimientoDios = "<p>
  Agradecemos a Dios por su palabra y por permitir este desarrollo, el cual 
  le dedicamos.
  </p>
<blockquote>
Porque la palabra de Dios es viva y eficaz, y más cortante que toda 
espada de dos filos; y penetra hasta partir el alma y el espíritu, las 
coyunturas y los tuétanos, y discierne los pensamientos y las intenciones 
del corazón.
<br>
Hebreos 4:12
<blockquote>".html_safe

end
