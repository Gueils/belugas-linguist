module Belugas
  module Templates
    class Base
      def initialize(project)
        @collection = project.collection
      end

      def render; end
    end
  end
end
