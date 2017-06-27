class Comment < ActiveRecord::Base
  belongs_to :post

  validates(:description, :author, :presence => true)
end
