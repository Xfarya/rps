feature "Opponent's choice" do
  
  scenario 'player has made a choice, now oponent choice' do
    enter_name
    click_button("Rock")
    expect(page).to have_content "Your opponent chose"
  end
end