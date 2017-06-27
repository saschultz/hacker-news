class Post < ActiveRecord::Base

  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day) }

  # attr_accessor(:score)

  def vote
    self.score += 1
  end

  has_many :comments

  validates(:title, :url, :presence => true)
end
