class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :author, :title, :body, presence: true
end
