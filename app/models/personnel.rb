class Personnel < ActiveRecord::Base
  has_many :employment_records, dependent: :destroy
  has_many :academic_degrees, dependent: :destroy
  has_many :contact_details, dependent: :destroy
  has_many :contact_infos, dependent: :destroy
  has_many :websites, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true

end
