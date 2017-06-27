class Post < ActiveRecord::Base
  has_many :comments
  
  validates(:title, :url, :presence => true)
end
