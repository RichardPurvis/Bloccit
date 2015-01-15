class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }

  def upvote
    value == 1
  end

  def downvote
    value == -1
  end

end
