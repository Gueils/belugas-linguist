module Belugas
  module Utils
    def language_percentage(language_size, project_size)
      "%.2f" % (language_size * 100.00 / project_size)
    end
  end
end
