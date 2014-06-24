#!/usr/bin/env rake
# encoding: UTF-8
require 'rdoc/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: :help

desc 'Display help menu'
task :help do
  puts <<-eos
  Available Rake tasks:

  rake rdoc     # Generate documentation
  rake rubocop  # Lint
  rake spec     # Test
  eos
end

desc 'Generate documentation'
RDoc::Task.new do |rdoc|
  rdoc.main = 'README.rdoc'
  rdoc.rdoc_files.include('README.md', 'lib/**/*.rb')
end

desc 'Lint'
RuboCop::RakeTask.new(:rubocop) do |t|
  t.patterns = %w(lib/**/*.rb)
end

desc 'Test'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ['--color --format d']
  t.pattern    = './spec/**/*_spec.rb'
end
