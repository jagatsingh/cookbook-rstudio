#!/usr/bin/env rake

desc "Runs foodcritic linter"
task :foodcritic do
  sh "foodcritic ."
end

task :provision do
  system("bundle exec vagrant provision")
end

task :default => 'foodcritic'
