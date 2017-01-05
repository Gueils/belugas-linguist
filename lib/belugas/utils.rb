module Belugas
  module Utils
    def language_percentage(language_size, project_size)
      language_size * 100.00 / project_size
    end

    def ratio(language_size, project_size)
      language_size.to_f / project_size
    end
  end
end
