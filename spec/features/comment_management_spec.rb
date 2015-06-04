require 'rails_helper'

describe 'commenting' do

  before do
    Post.create(title 'a title', text: 'long text')
  end

  it 'can add a comment to an article' do
    visit articles_path
    click_link 'a title'
    click_link 'Add comment'
    fill_in 'text', with: 'great post thx'
    click_button 'Send your comment'

    expect(page).to have_content 'great post thx'

  end
  
end