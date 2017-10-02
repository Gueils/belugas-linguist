require 'belugas/serializers'
require 'belugas/project'

module Belugas
  class Report
    SUPPORTED_LANGUAGES = ["php", "ruby", "python", "javascript", "javascript"].freeze

    def initialize(pathname)
      rugged = Rugged::Repository.new(pathname)
      linguist_project = Linguist::Repository.new(rugged, rugged.head.target_id)

      @project = Belugas::Project.new(rugged, linguist_project)
      @collection = @project.collection
    end

    def render
      @collection.languages.each do |language|
        next unless SUPPORTED_LANGUAGES.includes?(language.downcase)

        STDOUT.print Belugas::Serializers::Language.new(language, scope: @project).to_json
        STDOUT.print "\0"
      end
    end
  end
end
