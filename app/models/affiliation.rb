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

class Affiliation < ActiveRecord::Base
  has_many :employment_records

  validates :institute_name, presence: :true, uniqueness: true

  def website_url
    #binding.pry
    self.website || Rails.application.routes.url_helpers.affiliation_path(self.id)
  end
end
