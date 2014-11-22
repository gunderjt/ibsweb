require 'rails_helper'

describe Website do
  it "should be invalid without a url" do
    expect(build(:website, url: nil)).to_not be_valid
  end
  it "should be invalid without a person attached to record" do
    expect(build(:website, personnel: nil)).to_not be_valid
  end
  it "should be invalid without a website type identified" do
    expect(build(:website, website_type: nil)).to_not be_valid
  end
end