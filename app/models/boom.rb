class Boom < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  has_many :comments, :dependent => :destroy
  has_many :messages
  default_scope :order => 'created_at DESC'
end
