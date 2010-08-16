# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'ruby_template_handler/version'
 
Gem::Specification.new do |s|
  
  s.name = "ruby_template_handler"
  s.version     = RubyTemplateHandler::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.summary = %Q{Produce JSON views using pure-ruby}
  s.description = %Q{A Rails view template handler that renders Ruby objects to JSON.}
  s.email = "nullstyle@gmail.com"
  s.homepage = "http://github.com/aurorafeint/ruby_template_handler"
  s.authors = ["Scott Fleckenstein"]
  
  s.add_development_dependency "shoulda", ">= 2.11.1"
  s.add_development_dependency "yard", "= 0.5.3"
  s.add_development_dependency "mocha", "= 0.9.8"
    
  s.required_rubygems_version = ">= 1.3.6"
  
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.markdown Rakefile rails/init.rb)
  s.executables  = []
  s.require_path = 'lib'
  
  s.add_dependency("actionpack", ">= 2.3.5")
end