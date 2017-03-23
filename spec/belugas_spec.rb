require "spec_helper"

describe Belugas do
  include_context "linguist stuff"

  subject { Belugas::Languages::Collection.new(@project) }

  it "responds to languages" do
    expect(subject.languages.sample).to be_kind_of(Belugas::Language)
  end

  it "responds to project" do
    expect(subject.project).to eq(@project)
  end

  it "responds to to_json" do
    expect(subject.to_json).to eq([{
                                     type: "feature",
                                     name: "Ruby",
                                     description: "The application uses Ruby code",
                                     categories: ["Language"],
                                     cue_locations: nil,
                                     engines: ["belugas"],
                                     meta: {
                                       ratio: 0.0,
                                       total_files: 1
                                     }
                                   }].to_json)
  end
end
