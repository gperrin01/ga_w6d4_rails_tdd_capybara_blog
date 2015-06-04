require 'rails_helper'

describe 'handling articles' do

  let(:post) { Post.new(title: 'a post', text: 'some text') }
    
    it 'can add an article to the site' do 
      visit '/'
      click_link 'Create post'
      fill_in 'Title', with: 'a good title'
      fill_in 'Text', with: 'a long text'
      click_button 'Submit'

      expect(page).to have_content 'a good title'
    end
    it 'can display a specific article' do 
      post.save
      visit '/'
      click_link(post.title)
      expect(page).to have_content 'some text'
    end

    it 'can edit an article' do
      post.save
      visit post_path(post)
      click_link 'Edit post'
      fill_in 'Title', with: 'a new title'
      fill_in 'Text', with: 'a new text'
      click_button 'Submit'

      expect(page).to have_content 'a new title'
      expect(page).to have_content 'a new text'
    end

end