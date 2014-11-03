# == Schema Information
#
# Table name: contact_details
#
#  id           :integer          not null, primary key
#  personnel_id :integer
#  job_title    :string(255)
#  organization :string(255)
#  address      :text
#  city         :string(255)
#  state        :string(255)
#  country      :string(255)
#  zipcode      :string(255)
#  phone        :string(255)
#  email        :string(255)
#  alt_phone    :string(255)
#  alt_email    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class ContactDetail < ActiveRecord::Base
  belongs_to :personnel
end
