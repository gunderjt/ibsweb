class EmploymentRecord < ActiveRecord::Base
  belongs_to :personnel
  belongs_to :position
  belongs_to :affiliation

  validates :start_date, presence: :true
end
