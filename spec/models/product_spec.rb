require 'rails_helper'

describe Product do 
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "imperial-military")
      @user = FactoryGirl.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Apology accepted, Captain Needa.")
      @product.comments.create!(rating: 3, user: @user, body: "Take care not to choke on your aspirations, Director.")
      @product.comments.create!(rating: 5, user: @user, body: "You are in command now, Admiral Piett.")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end

    it "is not valid" do
      expect(Product.new(description: "Terrible job and very, very weak. Sad.")).not_to be_valid
    end
  end
end