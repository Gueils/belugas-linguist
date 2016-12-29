module Belugas
  module Formats
    class Table < Belugas::Formats::Base
      def render
        tp @object, "name", "size", "total_files", "top_language"
      end
    end
  end
end
