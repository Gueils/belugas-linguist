require 'belugas/languages/collection'

module Belugas
  class Project
    include ActiveModel::Serialization
    attr_reader :rugged, :project

    def initialize(rugged, linguist_project)
      @rugged = rugged
      @project = linguist_project
    end

    def name
      @rugged.path.split("/").last
    end

    def size
      @project.size
    end

    def total_files
      @total_files ||= @project.breakdown_by_file.values.map(&:size).inject(:+)
    end

    def top_language
      @project.language
    end

    def collection
      @collection ||= Belugas::Languages::Collection.new(self)
    end

    def to_json
      Belugas::Serializers::Project.new(self).to_json
    end

    def method_missing(name, *args, &block)
      @project.send(name, *args, &block)
    end
  end
end
