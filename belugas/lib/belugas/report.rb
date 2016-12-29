require 'belugas/templates'
require 'belugas/project'

module Belugas
  class Report

    TEMPLATE_NAMES = {
      "project" => Belugas::Templates::Project,
      "languages" => Belugas::Templates::Collection,
    }

    def initialize(pathname, templates)
      project = Belugas::Project.new(pathname)

      @templates = templates.split(",").map do |template|
        TEMPLATE_NAMES[template].new(project)
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
