# == Schema Information
#
# Table name: websites
#
#  id              :integer          not null, primary key
#  website_type_id :integer
#  url             :string(255)
#  display_name    :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class WebsitesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
