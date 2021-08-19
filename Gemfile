source 'https://rubygems.org'


gem 'bcrypt'

gem 'bootsnap', '>=1.1.0', require: false

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' 

gem 'devise' # Autenticación 

gem 'devise-i18n'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'kt-paperclip',                 # Anexos
  git: 'https://github.com/kreeti/kt-paperclip.git'

gem 'lazybox' # Dialogo modal

gem 'libxml-ruby'

gem 'nokogiri', '>=1.11.1'

gem 'odf-report' # Genera ODT

gem 'prawn' # Para generar PDF

gem 'pg' # Postgresql

gem 'rails', '~> 6.1'

gem 'rails-i18n'

gem 'redcarpet'

gem 'rubyzip', '>= 2.0'

gem 'rspreadsheet'

gem 'sassc-rails' # Para generar CSS

gem 'simple_form' # Formularios simples 

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'webpacker', '~> 6.0.0.rc.1'

gem 'will_paginate' # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  #git: 'https://github.com/pasosdeJesus/sip.git', branch: :main
  path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git', branch: :main
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git', branch: :main
  #path: '../heb412_gen'


group :development, :test do

  #gem 'byebug' # Depurar

  gem 'dotenv-rails'

  gem 'minitest'
end

group :development do

  gem 'colorize' # Colores en consola

  gem 'puma'

  gem 'web-console' # Consola en páginas 

end


group :test do

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov', '<0.18'

end


group :production do
  
  gem 'unicorn' # Para despliegue

end

