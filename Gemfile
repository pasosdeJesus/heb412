source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>=3.0.2'

gem 'apexcharts'

gem 'babel-transpiler'

gem 'bcrypt'

gem 'bootsnap', '>=1.1.0', require: false

gem 'cancancan' # Control de acceso

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', 
  branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' 

gem 'color'

gem 'devise' # Autenticación 

gem 'devise-i18n'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'jsbundling-rails'

gem 'kt-paperclip',                 # Anexos
  git: 'https://github.com/kreeti/kt-paperclip.git'

gem 'libxml-ruby'

gem 'nokogiri', '>=1.11.1'

gem 'odf-report' # Genera ODT

gem 'pg' # Postgresql

gem 'prawn' # Generación de PDF

gem 'prawnto_2',  :require => 'prawnto'

gem 'prawn-table'

gem 'rack'

gem 'rack-cors'

gem 'rails', '~> 7.0'

gem 'rails-i18n'

gem 'redcarpet'

gem 'rubyzip', '>= 2.0'

gem 'rspreadsheet'

gem 'sassc-rails' # Para generar CSS

gem 'simple_form' # Formularios simples 

gem 'sprockets-rails'

gem 'stimulus-rails'

gem 'turbo-rails', '~> 1.0'

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'will_paginate' # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git', branch: :msip
  #path: '../heb412_gen'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git', branch: :msip
  #path: '../mr519_gen'

gem 'msip', # Motor generico
  git: 'https://github.com/pasosdeJesus/msip.git', branch: :main
  #path: '../msip'


group :development, :test do

  gem 'debug', ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]

  gem 'colorize'

  gem 'dotenv-rails'

  gem 'minitest'
end

group :development do

  gem 'erd'

  gem 'puma'

  gem 'rails-erd'

  gem 'web-console' # Consola en páginas 

end


group :test do
  gem 'cuprite'

  gem 'capybara'

  gem 'rails-controller-testing'

  gem 'simplecov', '<0.18'
end


group :production do

  gem 'unicorn' # Para despliegue

end

