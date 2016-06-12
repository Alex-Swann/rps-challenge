
feature 'Winner Shown' do
  before :each do
    srand(0)
  end
  scenario 'winner shown when single player selection made' do
    sign_in_and_play
    page.first("input").click
    expect(page).to have_content "SkyNet wins!!!"
  end
end