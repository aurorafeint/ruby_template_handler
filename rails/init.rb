require 'ruby_template_handler'
ActionView::Template.register_template_handler :rb, RubyTemplateHandler::Handler
