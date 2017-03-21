require "spec_helper"

describe Belugas::Report do
  subject { Belugas::Report.new(".") }

  it "renders" do
    expect(subject.render.sample).to be_kind_of(Belugas::Language)
  end
end
