class Post < ActiveRecord::Base
  acts_as_taggable

  validates :author, :title, :body, presence: true
  validates :tag_list, length: { minimum: 1,
                                 too_short: "Post must have at least one tag" }
end
