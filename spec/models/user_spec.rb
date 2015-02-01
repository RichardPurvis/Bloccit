require 'rails_helper'

describe User do

  include TestFactories

  describe "#favorited(post)" do
#I have no idea how to start this one. PLEASE HELP! Do I have to make a user create a new post?
    before do
      @post = associated_post
      @user = authenticated_user

    end

    it "returns 'nil' if the user has not favorited the post" do
      expect( @user.favorited ).to eq(nil)
    end

    it "returns the appropriate favorite if it exists" do
      expect( @user.post.favorite ).to eq()
    end
  end
end