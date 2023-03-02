require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'load the new page' do
    visit new_post_path

    expect(page).to have_content('New Post')
    expect(page).to have_content('Name')
    expect(page).to have_content('Title')
    expect(page).to have_content('Content')
    expect(page).to have_button('Create Post')
    expect(page).to have_link('Back', href: '/posts')
  end
end
