class Article < ActiveRecord::Base
  attr_accessor :delete_image
  before_save :remove_image

  #Paperclip declarations
  has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>"}
  validates_attachment_content_type :image, :content_type => /\Aimage/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

  def remove_image
    self.image = nil unless self.delete_image.to_i.zero?
  end
end
