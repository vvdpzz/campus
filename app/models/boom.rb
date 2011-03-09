class Boom < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  has_many :comments, :dependent => :destroy
  has_many :messages
  default_scope :order => 'created_at DESC'
  
  validates_presence_of :hair, :on => :create, :message => "can't be blank"
  validates_presence_of :location, :on => :create, :message => "can't be blank"
  validates_presence_of :flirt, :on => :create, :message => "can't be blank"
end
