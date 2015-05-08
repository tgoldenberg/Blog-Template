module Haml::Filters
  module Markdown
    include Base

    def render text
      md_options = { smartypants: true, underline: true }
      x = Redcarpet::Render::SmartyHTML.new md_options
      y = Redcarpet::Markdown.new x, md_options
      y.render text
    end

    def render_with_options text, haml_options
      render text
    end

  end
end
