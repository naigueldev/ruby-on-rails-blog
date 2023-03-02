require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'loads the index page with new post link' do
    visit posts_path

    expect(page).to have_content('New Post')
  end
end
