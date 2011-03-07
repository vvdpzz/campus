class School < ActiveRecord::Base
  
  has_many :booms
  
  def to_param
    abbr
  end
end
