require "spec_helper"

describe Belugas::Project do
  before {
    @rugged = double("rugged")
    @linguist_project = double("linguist_project")

    allow(@rugged).to receive(:path).and_return("adir/anotherdir/name_project")
    allow(@linguist_project).to receive(:size).and_return(10)
    allow(@linguist_project).to receive(:breakdown_by_file).and_return({"Ruby": ["/lib/belugas.rb"]})
    allow(@linguist_project).to receive(:language).and_return("Ruby")
    allow(@linguist_project).to receive(:languages).and_return(["Ruby"])
  }
  subject { Belugas::Project.new(@rugged, @linguist_project) }

  it "responds to name" do
    expect(subject.name).to eq("name_project")
  end

  it "responds to size" do
    expect(subject.size).to be_kind_of(Integer)
  end

  it "responds to total_files" do
    expect(subject.total_files).to be_kind_of(Integer)
  end

  it "responds to top_language" do
    expect(subject.top_language).to eq("Ruby")
  end

  it "responds to collection" do
    expect(subject.collection).to be_kind_of(Belugas::Languages::Collection)
  end

  it "responds to json" do
    expect(subject.to_json).to eq({"name":"name_project","size":10,"total_files":1,"top_language":"Ruby"}.to_json)
  end
end
