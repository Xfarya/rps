def enter_name
  visit('/')
  fill_in :player, with: 'Dave'
  click_button 'Submit'
end