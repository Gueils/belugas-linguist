require 'thor'
require 'rugged'
require 'linguist'

require 'active_model_serializers'

require 'belugas/utils'
require 'belugas/report'
module Belugas
  class Sonar < Thor
    package_name "belugas"

    desc "report path --includes=project,languages --format=table", "Generates report from repo analysis"
    method_option :includes, type: :string, default: "project", required: false, aliases: "-i"
    method_option :format, type: :string, default: "table", required: false, aliases: "-f"
    def report(pathname = ".")
      Belugas::Report.new(pathname, options).render
    end
  end
end

require 'belugas/version'
