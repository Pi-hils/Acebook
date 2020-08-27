require '../rails_helper.rb'

feature 'Posts' do

  scenario 'list of posts' do
    visit '/posts'
    expect(page).to have_content('Posts thus far')
  end

  scenario 'creating a new post' do
    visit 'posts/new'
    fill_in 'Text', with: 'Bonjour'
    click_button 'Create Post'
    expect(page).to have_content('Bonjour')
    expect(page).not_to have_content('error')
  end

  scenario 'error a new post' do
    visit 'posts/new'
    fill_in 'Text', with: 'Hiya'
    click_button 'Create Post'
    expect(page).to have_content('error')
  end
end