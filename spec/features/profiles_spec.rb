require 'rails_helper'

describe "Visiting profiles" do
  

  before do
    @user = create(:user)
    @post = create(:post)
    @comment = create(:comment)
    allow(@comment).to receive(:send_favorite_emails)
    @comment.save
  end

  describe "not signed in" do

    it "shows profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))
    end
  end
end