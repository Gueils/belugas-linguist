require 'belugas/languages/collection'
require 'belugas/templates/project'

module Belugas
  class Project
    include ActiveModel::Serialization
    attr_reader :rugged, :project

    def initialize(pathname)
      @rugged = Rugged::Repository.new(pathname)
      @project = Linguist::Repository.new(@rugged, @rugged.head.target_id)
    end

    def name
      @rugged.path.split("/")[2]
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

    def to_s
      Belugas::Templates::Project.new(self).render
    end

    def method_missing(name, *args, &block)
      @project.send(name, *args, &block)
    end
  end
end
