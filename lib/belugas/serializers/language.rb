module Belugas
  module Serializers
    class Language < Belugas::Serializers::Base
      include Belugas::Utils

      attributes :type,:name, :description, :cue_locations,
                 :engines, :meta

      def type
        "feature"
      end

      def description
        "The application uses #{object.name} code"
      end

      def cue_locations
        scope.breakdown_by_file[object.name]
      end

      def engines
        ["belugas"]
      end

      def meta
        {
          ratio: ratio(object.size, scope.size),
          total_files: scope.total_files
        }
      end
    end
  end
end
