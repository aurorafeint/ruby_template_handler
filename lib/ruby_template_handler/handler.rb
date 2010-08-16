module RubyTemplateHandler
  class Handler < ActionView::TemplateHandler
    include ActionView::TemplateHandlers::Compilable

    def compile(template)    
      unless File.basename(template.filename).starts_with?('_')
        src = 'ActiveSupport::JSON.encode(code.call)'
      else
        src = "code.call"
      end

      "code = lambda{#{template.source}};" +
      "self.output_buffer = (#{src})"
    end
  end
end

