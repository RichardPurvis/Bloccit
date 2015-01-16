require 'rails_helper'

describe Post do
  describe "vote methods"do
    test = Post.new(title: 'test title', body: 'test post body must be this long')
    before do
      
      3.times { test.votes.build(value: 1) }
      2.times { test.votes.build(value: -1) }

      #3.times { test.votes.build(value: 1) }
      #2.times { test.votes.build(value: -1) }
      test.save
    end

    describe '#up_votes' do
      it "counts the number of votes with value = 1" do
        expect( test.up_votes ).to eq(3)
      end
    end

    describe '#down_votes' do
      it "counts the number of votes with value = -1" do
        expect( test.down_votes ).to eq(2)
      end
    end

    describe '#points' do
      it "returns the sum of all down and up votes" do
        expect( test.points ).to eq(1) # 3 - 2
      end
    end
  end
end