class Post < ActiveRecord::Base
  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day) }

  has_many :comments

  validates(:title, :url, :presence => true)
end
