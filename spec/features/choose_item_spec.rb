
feature '#choose_item' do
  scenario 'players can pick objects to play with' do
    visit('/')
    fill_in :player_1_name, with: "Dave"
    fill_in :player_2_name, with: "Mittens"
    click_button 'Play!'
    click_link 'Rock'
    click_link 'Lizard'
    expect(page).to have_content 'Rock crushes Lizard.'
  end
end