require 'rails_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :url }
  it { should have_many :comments }
  it { is_expected.to callback(:default_score).before(:save) }

  describe '#vote' do
    it 'increases the score by 1' do
      post = Post.create(title: 'Test', url: 'www.test.com', score: 0)
      post.vote()
      expect(post.score).to(eq 1)
    end
  end
end
