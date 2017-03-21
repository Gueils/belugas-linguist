require "spec_helper"

describe Belugas::Utils do
  before {
    RSpec.configure do |c|
      c.include Belugas::Utils
    end
  }

  it "sorts the percentage out" do
    expect(language_percentage(10, 100)).to eq(10)
  end

  it "sorts the ratio out" do
    expect(ratio(10, 100)).to eq(0.1)
  end
end
