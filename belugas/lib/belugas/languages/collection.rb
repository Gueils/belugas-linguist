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
    end
  end
end
