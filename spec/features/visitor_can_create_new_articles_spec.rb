require 'rails_helper'
feature 'visitor can write articles'do
    before do 
        visit welcome_index_path
        click_on 'My Blog'
    end

    describe 'visitor can write a article'do
      before do
        click_on 'New Article'
        fill_in  'Title', with: 'rails is really fun'
        fill_in  'Content', with: 'good to know that javascrips is so much better'
        click_on 'Create Article'
    end
    
      it 'visitor should see success message'do
        expect(page).to have_content "Article Created!"
      end
    end
end