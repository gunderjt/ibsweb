class AcademicDegree < ActiveRecord::Base
  belongs_to :personnel
  belongs_to :degree_type
end
