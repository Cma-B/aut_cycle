require 'rails_helper'
  feature 'visitor can write articles if they sign in'do
    before do 
      create(:user, email: 'anna@mail.com', password: 'bigbear12')
      visit welcome_index_path
      click_on 'My Blog'
      click_on 'Sign in'
      fill_in 'Email', with: 'anna@mail.com'
      fill_in 'Password', with: 'bigbear12'
    describe 'visitor can create new article' do
      before do
      visit welcome_index_path
      click_on 'My Blog'
      click_on 'Write Article'
      fill_in 'Title', with: 'Final steps'
      fill_in 'Content', with:  'It would be very hard'
      click_on 'Create Article'
    end
    it 'visitor should see success message'do
      expect(page).to have_content "Article Created!"
    end
  end
end
end
