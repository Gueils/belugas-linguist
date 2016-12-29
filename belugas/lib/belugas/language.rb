module Belugas
  class Language
    attr_reader :name, :lines_of_code

    def initialize(name, lines_of_code)
      @name = name
      @lines_of_code = lines_of_code
    end

    def size
      @lines_of_code
    end
  end
end
