class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

    scope :visible_to, -> (user) { user ? all : where(public: true) }
    #                            If user? Then: 'all', else: 'where(public: true)'

    scope :publicly_viewable, -> { where(public: true)}
end
