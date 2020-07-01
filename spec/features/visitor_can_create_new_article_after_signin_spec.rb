require 'rails_helper'
  feature 'visitor can write articles after sign in' do
    let(:user) { FactoryBot.create(:user) }
    before do
      login_as(user, scope: :user)
      visit welcome_index_path
      click_on 'My Blog'
      click_on 'New Article'
      fill_in 'Title', with: 'Final steps'
      fill_in 'Content', with:  'It would be very hard'
      click_on 'Create Article'
     end
    it 'visitor should see success message' do
      expect(page).to have_content "Article Created!"
    end
  end



