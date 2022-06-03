# Podria forzarse orden con:

#['sip', 'mr519_gen', 'heb412_gen'].each do |s| 
#  byebug
#  require_dependency File.join(Gem::Specification.find_by_name(s).gem_dir,
#                             '/config/initializers/inflections.rb')
#end

ActiveSupport::Inflector.inflections do |inflect|
end
