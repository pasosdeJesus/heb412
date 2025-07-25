# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby ">=3.4"

gem "apexcharts"

gem "bcrypt"

gem "bootsnap"

gem "cancancan" # Control de acceso

gem "color"

gem "devise" # Autenticación

gem "devise-i18n"

gem "jbuilder" # API JSON facil. Ver: https://github.com/rails/jbuilder

gem "kt-paperclip", # Anexos
  git: "https://github.com/kreeti/kt-paperclip.git"

gem "libxml-ruby"

gem "nokogiri"

gem "odf-report" # Genera ODT

gem "pg" # Postgresql

gem "prawn" # Generación de PDF

gem "prawnto_2", require: "prawnto"

gem "prawn-table"

# Lo mantenemos en 2 mientras se libera unicorn > 6.1
gem "rack", "~> 2"

gem "rack-cors"

gem "rails", "~> 8.0"
# path: "../tmp/rails/"

gem "rails-i18n"

gem "redcarpet"

gem "rubyzip"

gem "rspreadsheet"

gem "simple_form" # Formularios simples

gem 'sprockets-rails'

gem "stimulus-rails"

gem "turbo-rails"

gem "twitter_cldr" # ICU con CLDR

gem "tzinfo" # Zonas horarias

gem "will_paginate" # Listados en páginas

#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento
# lógico y no alfabetico como las gemas anteriores)

gem "heb412_gen", # Motor de nube y llenado de plantillas
  git: "https://gitlab.com/pasosdeJesus/heb412_gen.git",
  branch: "main"
# path: '../heb412_gen'

gem "mr519_gen", # Motor de gestion de formularios y encuestas
  git: "https://gitlab.com/pasosdeJesus/mr519_gen.git",
  branch: "main"
# path: '../mr519_gen'

gem "msip", # Motor generico
  git: "https://gitlab.com/pasosdeJesus/msip.git",
  branch: "main"
# path: '../msip'

group :development, :test do
  gem "brakeman"

  gem "bundler-audit"

  gem "code-scanning-rubocop"

  gem "colorize"

  gem "debug"

  gem "dotenv-rails"

  gem "rails-erd"

  gem "rubocop-minitest"

  gem "rubocop-rails"

  gem "rubocop-shopify"
end

group :development do
  gem "erd"

  gem "puma"

  gem "web-console" # Consola en páginas
end

group :test do
  gem "rails-controller-testing"

  gem "simplecov"
end

group :production do
  gem "unicorn"
end
