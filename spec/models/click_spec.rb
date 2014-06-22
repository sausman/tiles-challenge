require 'spec_helper'

describe Click do
  it "has a valid factory" do
    expect(FactoryGirl.build(:click)).to be_valid
  end

  it "validates presence of title" do
    expect(FactoryGirl.build(:click, title: nil)).to_not be_valid
  end

  it "validates presence of timestamp" do
    expect(FactoryGirl.build(:click, timestamp: nil)).to_not be_valid
  end
end
