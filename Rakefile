# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

# http://pathfindersoftware.com/2010/01/rubyrails-loading-seed-data-for-tests/
namespace :db do
  namespace :test do
    task :prepare => :environment do
      Rake::Task["db:seed"].invoke
      Rake::Task["sip:indices"].invoke
    end
  end
end

