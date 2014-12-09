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
  attr_accessor :delete_image
  before_save :remove_image

  has_attached_file :avatar, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"

  has_many :employment_records, dependent: :destroy
  has_many :academic_degrees, dependent: :destroy
  has_many :contact_details, dependent: :destroy
  has_many :contact_infos, dependent: :destroy
  has_many :websites, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_attachment_content_type :avatar, :content_type => /\Aimage/

  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/] 

  accepts_nested_attributes_for :employment_records, allow_destroy: true
  accepts_nested_attributes_for :academic_degrees, reject_if: lambda { |a| a[:year_awarded].blank? and !a[:in_progress] }, allow_destroy: true
  accepts_nested_attributes_for :contact_details, reject_if: lambda { |a| a[:job_title] and a[:organization]}, allow_destroy: true
  accepts_nested_attributes_for :contact_infos, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :websites, reject_if: lambda { |a| a[:url].blank? }, allow_destroy: true


  private
  
  def remove_image
    self.avatar = nil unless self.delete_image.to_i.zero?
  end

end
