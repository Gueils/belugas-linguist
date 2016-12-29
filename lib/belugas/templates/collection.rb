module Belugas
  module Templates
    class Collection < Belugas::Templates::Base
      def initialize(object, format)
        @object = object
        @formatter = FORMATTERS[format].new(@object.collection)
      end

      def render
        @formatter.render
      end
    end
  end
end
