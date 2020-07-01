require 'rails_helper'
  feature ' visitor can view articles' do
    before do 
      create(:article, title:"The unbelievable reality")
      create(:article, title:"Loosing weight without any diet or workout")
      visit welcome_index_path
      click_on 'My Blog'
    end
    
    describe 'visitor can see the article list 'do
      it 'visitor can see the first article title' do 
         expect(page).to have_content 'The unbelievable reality'
      end

      it 'visitor can  see the second article title'do
         expect(page).to have_content 'Loosing weight without any diet or workout'
      end
    end
  end