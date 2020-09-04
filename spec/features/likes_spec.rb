feature 'Likes' do
  scenario 'can be liked' do
    sign_up
    fill_in 'Text', with: 'New Post'
    click_button('Create Post')
    visit('/posts')
    click_link("like")
    visit('/posts')
    expect(page).to have_content("1")
  end
end