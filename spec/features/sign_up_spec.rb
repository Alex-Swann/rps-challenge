
feature '#sign_up' do
  scenario 'can sign in one player' do
    visit('/')
    fill_in :single_player_name, with: "Dave"
    click_button 'Play Single!'
    expect(page).to have_content "Dave vs. SkyNet"
  end
  scenario 'can sign in with two players' do
    visit('/')
    fill_in :player_1_name, with: "Dave"
    fill_in :player_2_name, with: "Mittens"
    click_button 'Play!'
    expect(page).to have_content "Dave vs. Mittens"
  end
end