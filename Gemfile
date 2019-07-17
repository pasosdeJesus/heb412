source 'https://rubygems.org'

gem 'rails', '~> 6.0.0.rc1'
gem 'rails-i18n'

# Postgresql
gem 'pg'#, '~> 0.21'

gem 'puma'

# Colores en consola
gem 'colorize'

# Para generar CSS
gem 'sass-rails'

gem 'webpacker'

gem 'bootsnap', '>=1.1.0', require: false

# Cuadros de selección para búsquedas
gem 'chosen-rails', git: 'https://github.com/vtamara/chosen-rails.git', branch: 'several-fixes'

# Dialogo modal
gem 'lazybox'

# Para convertir de tiff a jpg
#gem 'rmagick'

gem 'font-awesome-rails'
#
# Para generar PDF
gem 'prawn'

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem 'jbuilder'

# Uglifier comprime recursos Javascript
gem 'uglifier'

# CoffeeScript para recuersos .js.coffee y vistas
gem 'coffee-rails'

# jquery como librería JavaScript
gem 'jquery-rails'

gem 'jquery-ui-rails'

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem 'turbolinks'

# Ambiente de CSS
gem 'twitter-bootstrap-rails'
gem 'bootstrap-datepicker-rails'


# Facilita elegir colores en tema
gem 'pick-a-color-rails'
gem 'tiny-color-rails'

# Formularios simples 
gem 'simple_form'

# Autenticación y roles
gem 'devise'
gem 'devise-i18n'
gem 'cancancan'
gem 'bcrypt'

# Listados en páginas
gem 'will_paginate'

# ICU con CLDR
gem 'twitter_cldr'

# Maneja adjuntos
gem 'paperclip'

# Zonas horarias
gem 'tzinfo'

# Motor de sistemas de información estilo Pasos de Jesús
gem 'sip', git: 'https://github.com/pasosdeJesus/sip.git'
#gem 'sip', path: '../sip'

# Motor de formularios y encuestas
gem 'mr519_gen', git: 'https://github.com/pasosdeJesus/mr519_gen.git'
#gem 'mr519_gen', path: '../mr519_gen'

# Motor de nube y exportación
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git'
#gem 'heb412_gen', path: '../heb412_gen'

# Formularios anidados (algunos con ajax)
gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax'

# Los siguientes son para desarrollo o para pruebas con generadores
group :development do

  gem 'minitest'

  # Depurar
  #gem 'byebug'

  # Consola irb en páginas con excepciones o usando <%= console %> en vistas
  gem 'web-console'
end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do
  gem 'simplecov'
  gem 'capybara'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  
  # Para examinar errores, usar 'rescue rspec' en lugar de 'rspec'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end


group :production do
  # Para despliegue
  gem 'unicorn'

  # Requerido por heroku para usar stdout como bitacora
  gem 'rails_12factor'
end


