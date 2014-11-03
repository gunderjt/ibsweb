# == Schema Information
#
# Table name: contact_infos
#
#  id            :integer          not null, primary key
#  personnel_id  :integer
#  office_number :string(255)
#  phone_number  :string(255)
#  email         :string(255)
#  display       :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ContactInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
