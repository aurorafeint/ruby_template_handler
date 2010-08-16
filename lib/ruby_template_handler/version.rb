module RubyTemplateHandler
  module VERSION #:nodoc:
    MAJOR = 1
    MINOR = 0
    TINY  = 0
    BUILD = (ENV["BUILD"].nil? ? "" : ENV["BUILD"]).strip
    
    STRING = [MAJOR, MINOR, TINY].join('.') + BUILD
    
  end
end