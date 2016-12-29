require 'belugas/formats'
require 'belugas/templates'
require 'belugas/serializers'
require 'belugas/project'

module Belugas
  class Report

    TEMPLATE_NAMES = {
      "project" => Belugas::Templates::Project,
      "languages" => Belugas::Templates::Collection,
    }

    def initialize(pathname, options)
      project = Belugas::Project.new(pathname)

      @templates = options[:includes].split(",").map do |template|
        TEMPLATE_NAMES[template].new(project, options[:format])
      end
    end

    def render
      @templates.each do |template|
        template.render
        puts ""
      end
    end
  end
end
