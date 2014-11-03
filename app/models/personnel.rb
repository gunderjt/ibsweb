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

class Personnel < ActiveRecord::Base
  has_many :employment_records, dependent: :destroy
  has_many :academic_degrees, dependent: :destroy
  has_many :contact_details, dependent: :destroy
  has_many :contact_infos, dependent: :destroy
  has_many :websites, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true

  accepts_nested_attributes_for :employment_records
  accepts_nested_attributes_for :academic_degrees
  accepts_nested_attributes_for :contact_details
  accepts_nested_attributes_for :contact_infos
  accepts_nested_attributes_for :websites
end
