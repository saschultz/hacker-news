require 'rails_helper'

describe Comment do
  it { should validate_presence_of :description }
  it { should validate_presence_of :author }
  it { should belong_to :post }
end
