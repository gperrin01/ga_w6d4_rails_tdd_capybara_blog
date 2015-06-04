require 'rails_helper'

describe 'adding articles' do
    
    it 'can add an article to the site' do 
      visit '/'
      click_link 'Add article'
      fill_in 'title', with: 'a good title'
      fill_in 'text', with: 'a long text'
      click_button 'Submit'

      expect(page).to have_content 'a good title'
    end


end