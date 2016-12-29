require 'belugas/language'

module Belugas
  module Languages
    class Collection
      attr_reader :languages, :project

      def initialize(project)
        @project = project
        @languages = @project.languages.map do |key, value|
          Belugas::Language.new key, value
        end
      end

      def to_json
        @languages.map do |language|
          Belugas::Serializers::Language.new(language, scope: @project)
        end.to_json
      end
    end
  end
end
