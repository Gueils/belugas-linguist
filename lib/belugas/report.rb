require 'belugas/serializers'
require 'belugas/project'

module Belugas
  class Report
    def initialize(pathname)
      rugged = Rugged::Repository.new(pathname)
      linguist_project = Linguist::Repository.new(rugged, rugged.head.target_id)

      @project = Belugas::Project.new(rugged, linguist_project)
      @collection = @project.collection
    end

    def render
      @collection.languages.each do |language|
        STDOUT.print Belugas::Serializers::Language.new(language, scope: @project).to_json
        STDOUT.print "\0"
      end
    end
  end
end
