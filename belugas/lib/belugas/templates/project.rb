require 'table_print'

module Belugas
  module Templates
    class Project < Belugas::Templates::Base
      def render
        @formatter.render
      end
    end
  end
end
