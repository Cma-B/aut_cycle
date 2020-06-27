require 'rails_helper'
feature 'visitor can edit the article'do
  before do 
    create(:article, title: " Nitty Gritty ", content: "The best ever Thai dishes by alien chef from Mars")
    visit root_path  
  end

  describe 'visitor can update the article' do
    before do 
        click_on "Edit Article "
        fill_in  "Title", with: "Nitty Gritty, Thai buffe"
        ill_in "content", with: "The best ever Thai dishes with high quality material by alien chef from Mars"
        click_on "Save changes"
    end

    it 'visitor should see success message'do
    expect(page).to have_content "Article updated!"
    end
  end
end

  