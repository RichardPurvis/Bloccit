require 'rails_helper'

describe User do


  describe "#favorited(post)" do
#I have no idea how to start this one. PLEASE HELP! Do I have to make a user create a new post?
    before do
      @post = create(:post)
      @user = create(:user)

    end

    it "returns 'nil' if the user has not favorited the post" do
      expect( @user.favorited ).to eq(nil)
    end

    it "returns the appropriate favorite if it exists" do
      expect( @user.post.favorite ).to eq()
    end
  end

  describe ".top_rated" do

    before do
      @user1 = create(:user)
      post = create(:post, user: @user1)
      create(:comment, user: @user1, post: @post1)

      @user2 = create(:user)
      post = create(:post, user: @user1)
      2.times { create(:comment, user: @user1, post: @post1) }

    end

    it "returns users ordered by comment + posts" do
      expect( User.top_rated ).to eq([@user2, @user1])
    end

    it "stores a 'posts_count' on user" do
      users = User.top_rated
      expect( users.first.posts_count ).to eq(1)
    end

    it "stores a 'comments_count' on user" do
      users = User.top_rated
      expect( users.first.comments_count ).to eq(2)
    end
  end
end