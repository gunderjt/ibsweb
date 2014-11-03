# == Schema Information
#
# Table name: degree_types
#
#  id          :integer          not null, primary key
#  degree_type :string(255)
#  rank        :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class DegreeType < ActiveRecord::Base
  has_many :academic_degrees
end
