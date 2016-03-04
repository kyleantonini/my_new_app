require 'rails_helper'

describe Product do
  before do
    @product = FactoryGirl.create(:product)     
    @user = FactoryGirl.build(:user)
    @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
    @product.comments.create!(rating: 3, user: @user, body: "It's ok.")
    @product.comments.create!(rating: 5, user: @user, body: "Loved it!")
  end

  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  before do
  	# Product.new(description: "Nice bike")
  	FactoryGirl.build(:product, name: "")
  end

  it "returns invalid message" do
  	# expect(Product.new(description: "Nice bike")).not_to be_valid
  	expect(FactoryGirl.build(:product, name: "")).not_to be_valid
  end
end