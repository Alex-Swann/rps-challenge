
feature '#sign_up' do
  scenario 'can sign in one player' do
    visit('/')
    fill_in :player_1_name, with: "Dave"
    click_button 'Play!'
    expect(page).to have_content "Dave"
  end
end