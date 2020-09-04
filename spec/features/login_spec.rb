require_relative '../rails_helper.rb'
require_relative '../helpers/sign_up.rb'

feature "Login" do
  scenario "will authenticate when correct email is given" do
    sign_up
    click_link("Sign Out")
    visit('/accounts/sign_in')
    fill_in :account_username, with: 'testuser'
    fill_in :account_email, with: 'test@test.com'
    fill_in :account_password, with: '123456'
    click_button('Log in')
    expect(page).to have_content("Hi testuser!")
  end
end