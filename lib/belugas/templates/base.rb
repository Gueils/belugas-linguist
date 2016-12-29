module Belugas
  module Templates
    class Base
      FORMATTERS = {
        "json" => Belugas::Formats::Json,
        "table" => Belugas::Formats::Table
      }.freeze

      def initialize(object, format)
        binding.pry
        @object = object
        @formatter = FORMATTERS[format].new(@object)
      end

      def render; end
    end
  end
end
