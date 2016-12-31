require 'belugas/serializers'
require 'belugas/project'

module Belugas
  class Report
    def initialize(pathname)
      @project = Belugas::Project.new(pathname)
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
