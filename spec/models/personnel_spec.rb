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

  context "has many associations" do
    it "doesn't have a website if no url is given"
    it "doesn't have an association if position and affiliation are blank"
    it "doesn't have an academic degree if in_progress or year completed are both blank"
    it "doesn't have any contact information if all of the fields are blank"
    it "doesn't have any contact detail if job title and organization isn't "
  end
end