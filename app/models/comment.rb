class Comment < ActiveRecord::Base
  belongs_to :post

  validates :author, presence: true

  validates :post_id, presence: true
end
