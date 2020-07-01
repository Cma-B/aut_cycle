require 'rails_helper'

feature ' visitor can view articles content' do
    before do 
        create(:article, title: "google reality", content: "two people and half")
        visit welcome_index_path
        click_on "My Blog"
        visit articles_path
        click_on "Show"
    end
    
    describe 'visitor can see article content'do
      it 'visitor can see the article title' do 
        expect(page).to have_content 'google reality'
      end

      it 'visitor can see article content' do
          expect(page).to have_content'two people and half'
      end  
    end
end