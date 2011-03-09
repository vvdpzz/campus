class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :boom
  validates_presence_of :body, :on => :create, :message => "can't be blank"
end
