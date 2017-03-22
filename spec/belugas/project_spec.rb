require "spec_helper"

describe Belugas::Project do
  subject { Belugas::Project.new(".") }

  it "responds to name" do
    pending
    expect(subject.name).to eq("src")
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
    pending
    expect(subject.to_json).to eq({"name":"src","size":8603,"total_files":20,"top_language":"Ruby"}.to_json)
  end
end
