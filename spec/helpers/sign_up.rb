def sign_up
  visit '/accounts/sign_up'
  fill_in :account_username, with: 'testuser'
  fill_in :account_email, with: 'test@test.com'
  fill_in :account_password, with: '123456'
  fill_in :account_password_confirmation, with: '123456'
  click_button 'Sign up'
end

def alt_sign_up
  visit '/accounts/sign_up'
  fill_in :account_username, with: '2testuser'
  fill_in :account_email, with: '2test@test.com'
  fill_in :account_password, with: '123456'
  fill_in :account_password_confirmation, with: '123456'
  click_button 'Sign up'
end
