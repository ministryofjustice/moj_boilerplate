require 'erb'
require_relative 'template_processor'

module Compiler
  class MojProcessor < TemplateProcessor

    def handle_yield(section)
      file_path = @source_root + "views/layouts/partials/_#{section}.html.erb"
      s = ""
      if File.exist?(file_path)
        s << File.read(file_path)
      else
        s << "<%= yield :#{section} %>"
      end
      # if not inside content_for
      if section != :page_title && section != :body_classes
        # s << "<%= yield :#{section} %>"
      end
      s
    end

    def asset_path(file, options={})
      "<%= asset_path \"#{file}\" %>"
    end

    def content_for?(*args)
      file_path = @source_root + "views/layouts/partials/_#{args[0]}.html.erb"
      File.exist?(file_path)
    end
  end
end
