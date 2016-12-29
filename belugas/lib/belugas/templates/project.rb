require 'table_print'

module Belugas
  module Templates
    class Project < Belugas::Templates::Base

      def render
        tp @project, "name", "size", "total_files", "top_language"
      end

      private

      def language_percentage(language)
        "%.2f" % (language.size * 100.00 / @project.size)
      end
    end
  end
end
