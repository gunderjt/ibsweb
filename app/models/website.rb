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
#  personnel_id    :integer
#

class Website < ActiveRecord::Base
  belongs_to :personnel
  belongs_to :website_type

  validates :url, presence: :true
  validates :website_type_id, presence: :true
end
