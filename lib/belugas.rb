require 'thor'
require 'rugged'
require 'linguist'

require 'active_model_serializers'

require 'belugas/utils'
require 'belugas/report'
module Belugas
  class Sonar < Thor
    package_name "belugas"

    desc "report", "Generates report from repo analysis"
    def report(pathname = ".")
      Belugas::Report.new(pathname).render
    end
  end
end

require 'belugas/version'
