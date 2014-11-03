# == Schema Information
#
# Table name: website_types
#
#  id         :integer          not null, primary key
#  web_type   :string(255)
#  rank       :integer
#  created_at :datetime
#  updated_at :datetime
#

class WebsiteType < ActiveRecord::Base
  has_many :websites

  validates :web_type, presence: :true, uniqueness: true
end
