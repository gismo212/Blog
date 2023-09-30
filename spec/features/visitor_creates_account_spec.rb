require "rails_helper"

feature "Contact creation" do
  scenario "allows guest to create account" do
    visit new_user_registration_path 

    fill_in :user_email, :with =>  'user@example.com'
    fill_in :user_username, :with =>  'boler12'
    fill_in :user_password, :with =>  'x12345'
    fill_in :user_password_confirmation, :with =>  'x12345'

    click_button 'Sign up' 

    expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end
end