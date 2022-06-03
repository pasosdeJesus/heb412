require 'heb412_gen/version'

Sip.setup do |config|
  config.ruta_anexos = ENV.fetch('SIP_RUTA_ANEXOS', 
                                 "#{Rails.root}/archivos/anexos")
  config.ruta_volcados = ENV.fetch('SIP_RUTA_VOLCADOS',
                                   "#{Rails.root}/archivos/bd")
  # En heroku los anexos son super-temporales
  if !ENV["HEROKU_POSTGRESQL_GREEN_URL"].nil?
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "Heb412 - #{Heb412Gen::VERSION}"
  config.descripcion = "Plantilla para una aplicación web con autenticación, nube y geografía de Colombia"
  config.codigofuente = "https://github.com/pasosdeJesus/heb412"
  config.urlcontribuyentes = "https://github.com/pasosdeJesus/heb412/graphs/contributors"
  config.urlcreditos = "https://github.com/pasosdeJesus/heb412/blob/master/CREDITOS.md"
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
