require_relative '../rails_helper.rb'
require_relative '../helpers/sign_up.rb'

feature 'Posts' do

  scenario 'list of posts' do
    sign_up
    visit '/posts'
    expect(page).to have_content('Uckerberg')
  end

  scenario 'creating a new post' do
    sign_up
    visit 'posts/new'
    fill_in 'Text', with: 'Bonjour'
    click_button 'Create Post'
    expect(page).to have_content('Bonjour')
    expect(page).not_to have_content('error')
  end

  scenario 'error a new post' do
    sign_up
    visit 'posts/new'
    fill_in 'Text', with: 'Hiya'
    click_button 'Create Post'
    expect(page).to have_content('error')
  end

  scenario 'posts can be edited' do
    sign_up
    visit 'posts/new'
    fill_in 'Text', with: 'Bonjour'
    click_button 'Create Post'
    visit '/posts'
    click_link 'Edit'
    expect(page).to have_content('Edit Post')
  end

  scenario 'edited posts are saved' do
    sign_up
    visit 'posts/new'
    fill_in 'Text', with: 'Bonjour'
    click_button 'Create Post'
    visit '/posts'
    click_link 'Edit'
    fill_in 'Text', with: 'The test changes things'
    click_button 'Update Post'
    expect(page).to have_content('The test changes things')
    expect(page).not_to have_content('Bonjour')
  end

  scenario 'posts can be destroyed' do
    sign_up
    visit 'posts/new'
    fill_in 'Text', with: 'Bonjour'
    click_button 'Create Post'
    visit '/posts'
    expect(page).to have_link('Destroy')
    expect(page).to have_content('Bonjour')
    click_link 'Destroy'
    expect(page).not_to have_content('Bonjour')
  end
end
