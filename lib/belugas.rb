require 'thor'
require 'rugged'
require 'linguist'

require 'active_model_serializers'

require 'belugas/utils'
require 'belugas/report'
require "rescuer"

module Belugas
  class Sonar < Thor
    package_name "belugas"

    desc "report", "Generates report from repo analysis"
    def report(pathname = ".")
      rescuer = Rescuer.new

      begin
        Belugas::Report.new(pathname).render
      rescue Exception => e
        rescuer.ping e
        raise e
      end
    end
  end
end

require 'belugas/version'
