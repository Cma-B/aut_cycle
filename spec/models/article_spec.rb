require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "DB" do
  it {is_expected.to have_db_column :title }
  end
  describe 'validation'do
  it {is_expected.to validate_presence_of :title}
  end
describe 'Factory'do
  expect(create(:article)).to be_valid
  end
end 

