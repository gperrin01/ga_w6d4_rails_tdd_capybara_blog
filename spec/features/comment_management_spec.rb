require 'rails_helper'

describe 'commenting' do

  before do
    Post.create(title:'a test title', text: 'long text')
  end

  it 'can add a comment to a post' do
    visit posts_path
    click_link 'a test title'
    click_link 'Add comment'
    fill_in 'Text', with: 'great post thx'
    click_button 'Send your comment'

    expect(page).to have_content 'great post thx'

  end
  
end