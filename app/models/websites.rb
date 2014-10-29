class Websites < ActiveRecord::Base
  belongs_to :personnel
  belongs_to :website_type
end
