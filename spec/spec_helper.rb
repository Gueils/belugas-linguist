$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"
require "belugas/utils"
require 'active_model_serializers'
require "belugas/languages/collection"
require "belugas/report"
require "belugas/language"
require "belugas/project"
require "belugas"

RSpec.configure do |rspec|
  rspec.shared_context_metadata_behavior = :apply_to_host_groups
end

RSpec.shared_context "linguist stuff", :shared_context => :metadata do
  before {
    rugged = double("rugged")
    linguist_project = double("linguist_project")

    allow(rugged).to receive(:path).and_return("adir/anotherdir/name_project")
    allow(linguist_project).to receive(:size).and_return(10)
    allow(linguist_project).to receive(:breakdown_by_file).and_return({"Ruby": ["/lib/belugas.rb"]})
    allow(linguist_project).to receive(:language).and_return("Ruby")
    allow(linguist_project).to receive(:languages).and_return(["Ruby"])

    @project = Belugas::Project.new(rugged, linguist_project)
  }
end

RSpec.configure do |rspec|
  rspec.include_context "linguist stuff", :include_shared => true
end
