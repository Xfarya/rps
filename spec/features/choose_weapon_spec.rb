feature 'Choose weapon' do
  scenario 'Can fill in name, submit and view the name' do
    enter_name
    click_button("Rock")
    expect(page).to have_content 'You chose Rock'
  end
end