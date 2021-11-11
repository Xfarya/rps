feature 'Choose weapon' do
  scenario 'Can choose a weapon' do
    enter_name
    click_button("Rock")
    expect(page).to have_content 'Dave chose'
  end
end