# == Schema Information
#
# Table name: contact_infos
#
#  id            :integer          not null, primary key
#  personnel_id  :integer
#  office_number :string(255)
#  phone_number  :string(255)
#  email         :string(255)
#  display       :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class ContactInfo < ActiveRecord::Base
  belongs_to :personnel

  alias_attribute :phone, :phone_number
  alias_attribute :display?, :display
  
end
