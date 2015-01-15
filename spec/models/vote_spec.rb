require 'rails_helper'

describe Vote do
  describe "validations" do


    describe "value validation" do
      it "only allows -1 or 1 as values" do
        subject.value = 1
        subject.save

        expect(subject.errors[:value]).to be_empty

        subject.value = -1
        subject.save

        expect(subject.errors[:value]).to be_empty

        subject.value = 20
        subject.save

        expect(subject.errors[:value]).to_not be_empty
      end
    end
  end
end