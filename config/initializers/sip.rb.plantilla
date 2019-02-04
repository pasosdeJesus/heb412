require 'heb412_gen/version'

Sip.setup do |config|
      config.ruta_anexos = Rails.root.join('archivo', 'anexos')
      config.ruta_volcados = Rails.root.join('archivo', 'bd')
      # En heroku los anexos son super-temporales
      if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "Heb412 - Versión " + Heb412Gen::VERSION
end
