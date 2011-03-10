class School < ActiveRecord::Base
  
  has_many :booms, :dependent => :destroy
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :abbr, :on => :create, :message => "can't be blank"
  validates_presence_of :website, :on => :create, :message => "can't be blank"
  
  def to_param
    abbr
  end
end
