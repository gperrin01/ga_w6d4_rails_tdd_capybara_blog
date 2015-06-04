require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post) {Post.new(title: 'cool news', text: 'a long text')}

  it 'must have a title' do 
    p = Post.new(text: 'woow')
    expect(p.valid?).to be false
  end
  it 'must have a text' do 
    p = Post.new(title: 'haaa')
    expect(p.valid?).to be false
  end

  context 'Ratings' do 
    it 'can count how many comments' do 
      5.times do
        post.comments << Comment.new(text: 'ha')
      end
    expect(post.comments.length).to eq 5
    end

  end
end
