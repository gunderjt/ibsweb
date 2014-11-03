# == Schema Information
#
# Table name: academic_degrees
#
#  id             :integer          not null, primary key
#  personnel_id   :integer
#  degree_type_id :integer
#  year_awarded   :string(255)
#  in_progress    :boolean
#  university     :string(255)
#  department     :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class AcademicDegreeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
