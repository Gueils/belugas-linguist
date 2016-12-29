module Belugas
  module Templates
    class Collection < Belugas::Templates::Base

      def render
        tp @collection.languages, "name", "size", percentage: lambda {|l| "#{language_percentage(l)} %"}
      end

      private

      def language_percentage(language)
        "%.2f" % (language.size * 100.00 / @collection.project.size)
      end
    end
  end
end
