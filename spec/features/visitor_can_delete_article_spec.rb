require 'rails_helper'
  feature 'visitor can delete article' do
    before do 
      create(:article, title: "Rehab Camp")
        visit welcome_index_path 
        click_on 'My Blog'
        click_on 'Destroy'
    end

    it 'delete the specific article' do
      expect(page).to_not have_content "Rehab Camp"
    end
  end
      
      


