require 'rails_helper'

describe 'handling articles' do
    
    it 'can add an article to the site' do 
      visit '/'
      click_link 'Create post'
      fill_in 'Title', with: 'a good title'
      fill_in 'Text', with: 'a long text'
      click_button 'Submit'

      expect(page).to have_content 'a good title'
    end
    it 'can display a specific article' do 
      
    end

end