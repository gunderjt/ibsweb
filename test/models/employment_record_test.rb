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

require 'test_helper'

class EmploymentRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
