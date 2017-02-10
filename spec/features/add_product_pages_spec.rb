require 'rails_helper'

describe "add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'name', :with => 'Candy'
    fill_in 'cost', :with => 3
    fill_in 'country', :with => 'USA'
    fill_in 'image url', :with => 'image.png'
    click_on 'Save'
    expect(page).to have_content 'Candy'

  end
end
