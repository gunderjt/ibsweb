# == Schema Information
#
# Table name: positions
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  display_title :string(255)
#  rank          :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Position < ActiveRecord::Base
  has_many :employment_records

  validates :title, presence: :true, uniqueness: true
end
