require 'minitest/autorun'
require 'rake/testtask'
require 'cucumber'
require 'cucumber/rake/task'


require File.expand_path 'lib/restaurant.rb'
require File.expand_path 'test/restaurant_test.rb'


task :default => :test# :test

desc 'Run Minitest Tests'
Rake::TestTask.new(:test) do |t|
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end



