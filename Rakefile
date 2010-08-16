require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'fileutils'

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "ruby_template_handler/version"

desc "builds the gem"
task :build do
  FileUtils.mkdir_p "pkg"
  system "gem build ruby_template_handler.gemspec && mv *.gem pkg/"
end


Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test


begin
  require 'yard'

  YARD::Rake::YardocTask.new do |t|
    t.files   = ['lib/**/*.rb', "README.markdown", "LICENSE"]
    t.options = ["--private", "--protected", '-odoc']
  end
rescue LoadError
  task :yard do
    puts "The yard gem couldn't be loaded."
  end
end