require "spec_helper"

describe Belugas::Language do
  subject { Belugas::Language.new("PHP", 10) }

  it "responds size" do
    expect(subject.size).to eq(10)
  end

  it "has language name" do
    expect(subject.name).to eq("PHP")
  end

  it "responds line_of_code" do
    expect(subject.lines_of_code).to eq(10)
  end
end
