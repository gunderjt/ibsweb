# == Schema Information
#
# Table name: employment_records
#
#  id             :integer          not null, primary key
#  personnel_id   :integer
#  position_id    :integer
#  affiliation_id :integer
#  start_date     :datetime
#  end_date       :datetime
#  created_at     :datetime
#  updated_at     :datetime
#

class EmploymentRecord < ActiveRecord::Base
  belongs_to :personnel
  belongs_to :position
  belongs_to :affiliation

  validates :start_date, presence: :true
end
