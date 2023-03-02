require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'loads the index page with new post link text' do
    visit posts_path

    expect(page).to have_content('New Post')
  end

  it 'loads the index page with correct new post link' do
    visit posts_path

    click_link 'New Post'

    expect(page).to have_content('New Post')
    expect(page).to have_content('Back')
  end


  it 'load the registered posts' do
    Post.create(name: 'Test name', title: 'Test title', content: 'Test content')
    
    visit posts_path

    expect(page).to have_content('Test name')
    expect(page).to have_content('Test title')
    expect(page).to have_content('Test content')
  end
end
