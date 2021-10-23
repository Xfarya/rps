feature 'Entering player name' do
  scenario 'Can fill in name, submit and view the name' do
    visit('/')
    fill_in :player, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave'
  end
end