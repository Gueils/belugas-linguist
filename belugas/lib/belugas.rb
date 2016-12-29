require "thor"

module Belugas
  class Sonar < Thor                                                 # [1]
    package_name "belugas"                                             # [2]
    map "-L" => :list                                              # [3]

    desc "report", "Generates report from repo analysis"
    def report(path)
      puts "Where's nachito? #{path}"
    end
  end
end

require "belugas/version"
