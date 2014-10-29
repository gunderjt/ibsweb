class Affiliation < ActiveRecord::Base
  has_many :employment_records

  validates :institute_name, presence: :true
end
