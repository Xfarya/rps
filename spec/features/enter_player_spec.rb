feature 'Entering player name' do
  scenario 'Can fill in name, submit and view the name' do
    enter_name
    expect(page).to have_content 'Dave'
  end
end