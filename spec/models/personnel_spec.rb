require 'rails_helper'

describe Personnel do
  it "is invalid without a first_name" do
    contact = build(:personnel, first_name: nil)
    expect(contact).not_to be_valid
  end
  it "is invalid without a last_name" do
    contact = build(:personnel, last_name: nil)
    expect(contact).not_to be_valid
  end
end