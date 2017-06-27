class Post < ActiveRecord::Base
  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day) }
  before_save(:default_score)

  def default_score
    self.score = 0
  end  

  def vote
    self.score += 1
  end

  has_many :comments

  validates(:title, :url, :presence => true)
end
