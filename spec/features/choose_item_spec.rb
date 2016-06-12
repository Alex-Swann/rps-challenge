
feature 'Choose_Items' do
  before :each do
    srand(0)
  end

  scenario 'players can pick objects in multiplayer' do
    multi_sign_in_and_play
    page.first("input").click
    page.first("input").click
    expect(page).to have_content "It's a tie!"
  end

  scenario 'single player can pick item' do
    sign_in_and_play
    page.first("input").click
    expect(page).to have_content "Glock breaks Rock."
  end
end