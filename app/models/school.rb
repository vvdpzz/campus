class School < ActiveRecord::Base
  
  has_many :booms, :dependent => :destroy
  
  def to_param
    abbr
  end
end
