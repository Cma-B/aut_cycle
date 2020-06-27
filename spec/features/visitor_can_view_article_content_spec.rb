require 'rails_helper'

feature ' visitor can view articles content' do
    before do 
        create(:article, title: "google reality", content: "two people and half")
        visit root_path 
        click_on "google reality"
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