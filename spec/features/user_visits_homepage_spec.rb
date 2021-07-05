require 'rails_helper'

feature 'User visits homepage' do
  scenario 'successfully' do
    visit '/'

    expect(page).to have_css 'h1'
    expect(page).to have_content 'Listing Countries'
  end
end