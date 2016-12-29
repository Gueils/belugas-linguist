require 'thor'
require 'rugged'
require 'linguist'

require 'belugas/report'

module Belugas
  class Sonar < Thor
    package_name "belugas"

    desc "report path --includes=project,languages", "Generates report from repo analysis"
    method_option :includes, type: :string, default: "project", required: false, aliases: "-i"
    def report(pathname = ".")
      Belugas::Report.new(pathname, options[:includes]).render
    end
  end
end

require 'belugas/version'
