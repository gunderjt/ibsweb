# == Schema Information
#
# Table name: personnels
#
#  id                  :integer          not null, primary key
#  uname               :string(255)
#  mailing_list        :boolean
#  formally_affiliated :boolean
#  retiree             :boolean
#  rostered            :boolean
#  first_name          :string(255)
#  last_name           :string(255)
#  salutation          :string(255)
#  notes               :text
#  research_interests  :text
#  skills_expertise    :text
#  bio                 :text
#  employee_id         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class PersonnelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
