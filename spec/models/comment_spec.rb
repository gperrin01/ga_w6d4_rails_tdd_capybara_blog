require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'must have a text' do 
    c = Comment.new
    expect(c.valid?).to be false
  end
end
