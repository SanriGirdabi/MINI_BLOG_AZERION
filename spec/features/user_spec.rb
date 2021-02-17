require 'rails_helper'

RSpec.feature "Users", type: :feature do
  before(:each) do
    Rails.application.load_seed
    visit new_user_session_path
    within('form') do
      fill_in 'Email', with: 'sercanuygur@gmail.com'
      fill_in 'Password', with: '1234567'
    end
    click_button 'Sign In'
  end
  it 'Redirects user to user page for the first time' do
    expect(page).to have_content("Blog Posts")
  end
  it 'allows user to navigate to the show page' do
    first(".btn").click
    expect(page).to have_content('Body')
    expect(page).to have_content('User')
  end
  it 'allows user to navigate to new post page' do
    click_link 'New Post'
    expect(page).to have_content('New Post')
  end
  it 'allows user to log out' do
    click_link 'Log Out'
    expect(page).to have_content('Sign In')
  end
end
