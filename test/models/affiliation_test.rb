# == Schema Information
#
# Table name: affiliations
#
#  id                      :integer          not null, primary key
#  institute_name          :string(255)
#  website                 :string(255)
#  phone                   :string(255)
#  fax                     :string(255)
#  email                   :string(255)
#  parent_institutition_id :integer
#  created_at              :datetime
#  updated_at              :datetime
#  abv                     :string(255)
#

require 'test_helper'

class AffiliationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
