Heb412::Application.config.relative_url_root = ENV.fetch(
  'RUTA_RELATIVA', '/heb412/')
Heb412::Application.config.assets.prefix = ENV.fetch(
  'RUTA_RELATIVA', '/heb412') + '/assets'
