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
  it 'allows user to navigate to editing page and edit the post' do
    all(".test").first.click
    expect(page).to have_content('Editing Post')
    fill_in 'Title', with: 'My test title- edited'
    fill_in 'Body', with: 'My test content, my test content, my test content- edited'
    click_button 'Update Post'
    expect(page).to have_content('Post was successfully updated.')
  end
  it 'allows user to navigate to create new post' do
    click_link 'New Post'
    expect(page).to have_content('New Post')
    fill_in 'Title', with: 'My test title'
    fill_in 'Body', with: 'My test content, my test content, my test content'
    click_button 'Create Post'
    expect(page).to have_content('Post was successfully created.')
  end
  it 'allows user to delete a post' do
    all(".test-2").first.click
    expect(page).to have_content('Post was successfully destroyed.')
  end
  it 'allows user to log out' do
    click_link 'Log Out'
    expect(page).to have_content('Sign In')
  end
end
