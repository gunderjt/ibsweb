require 'rails_helper'

describe Personnel do
  it "is invalid without a first_name" do
    contact = build(:personnel, first_name: nil)
    expect(contact).to_not be_valid
  end
  it "is invalid without a last_name" do
    contact = build(:personnel, last_name: nil)
    expect(contact).to_not be_valid
  end
  it "has many positions" do
    p = Personnel.reflect_on_association(:employment_records)
    expect(p.macro).to eq :has_many
  end
  it "has many academic degrees" do
    p = Personnel.reflect_on_association(:academic_degrees)
    expect(p.macro).to eq :has_many
  end
  it "has many contact details" do
    p = Personnel.reflect_on_association(:contact_details)
    expect(p.macro).to eq :has_many
  end
  it "has many contact infos" do
    p = Personnel.reflect_on_association(:contact_infos)
    expect(p.macro).to eq :has_many
  end
  it "has many websites" do
    p = Personnel.reflect_on_association(:websites)
    expect(p.macro).to eq :has_many
  end
end