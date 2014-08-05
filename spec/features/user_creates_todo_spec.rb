require 'rails_helper'

describe 'User creates todo' do
  it 'Succesfully' do
    visit new_todo_path
    fill_in 'Description', with: 'Pay utilities bill'
    click_button 'Save'

    expect(page).to have_content('Your new Todo was saved.')
  end
end