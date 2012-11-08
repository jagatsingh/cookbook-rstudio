#!/usr/bin/env rake

desc "Runs foodcritic linter"
task :foodcritic do
  sh "foodcritic ."
end

desc "Runs tailor"
task :tailor do
  system("tailor -c .config")
end

desc "Provision vagrant"
task :provision do
  system("bundle exec vagrant provision")
end

task :default => 'foodcritic'
