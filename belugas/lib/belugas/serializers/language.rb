require 'pry'
module Belugas
  module Serializers
    class Language < Belugas::Serializers::Base
      include Belugas::Utils

      attributes :name, :size, :percentage

      def percentage
        language_percentage(object.size, scope.size)
      end
    end
  end
end
