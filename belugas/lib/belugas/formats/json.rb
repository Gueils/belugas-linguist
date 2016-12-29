module Belugas
  module Formats
    class Json < Belugas::Formats::Base
      def render
        STDOUT << @object.to_json
      end
    end
  end
end
