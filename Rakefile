#!/usr/bin/env rake

desc "Runs foodcritic linter"
task :foodcritic do
  sh "foodcritic ."
end

"Runs tailor"
task :tailor do
  system("tailor -c .config")
end

"Provision vagrant"
task :provision do
  system("bundle exec vagrant provision")
end

task :default => 'foodcritic'
