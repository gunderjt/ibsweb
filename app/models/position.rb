class Position < ActiveRecord::Base
  has_many :employment_records

  validates :title, presence: :true
end
