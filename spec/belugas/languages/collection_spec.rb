require "spec_helper"

describe Belugas::Languages::Collection do
  include_context "linguist stuff"

  subject { Belugas::Languages::Collection.new(@project) }

  it "renders json" do
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
