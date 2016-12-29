module Belugas
  module Serializers
    class Project < Belugas::Serializers::Base
      attributes :name, :size, :total_files, :top_language
    end
  end
end
