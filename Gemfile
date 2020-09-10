source 'https://rubygems.org'


gem 'bcrypt'

gem 'bootsnap', '>=1.1.0', require: false

gem 'coffee-rails' , '>= 5.0.0'

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'devise' , '>= 4.7.2' # Autenticación 

gem 'devise-i18n', '>= 1.9.2'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'lazybox' # Dialogo modal

gem 'libxml-ruby'

gem 'odf-report' # Genera ODT

gem 'paperclip' # Maneja adjuntos

gem 'prawn' # Para generar PDF

gem 'pg' # Postgresql

gem 'puma'

gem 'rails', '~> 6.0.3.3'

gem 'rails-i18n', '>= 6.0.0'

gem 'redcarpet'

gem 'rubyzip', '>= 2.0'

gem 'rspreadsheet'

gem 'sassc-rails' , '>= 2.1.2' # Para generar CSS

gem 'simple_form' , '>= 5.0.2' # Formularios simples 

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'webpacker', '>= 5.2.1'

gem 'will_paginate' # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  git: 'https://github.com/pasosdeJesus/sip.git'
  #path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git'
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git'
  #path: '../heb412_gen'


group :development, :test do

  #gem 'byebug' # Depurar

  gem 'minitest'
 
end

group :development do

  gem 'colorize' # Colores en consola

  gem 'web-console' , '>= 4.0.4' # Consola en páginas 

end


group :test do

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov'
  
end


group :production do
  
  gem 'unicorn' # Para despliegue

end

