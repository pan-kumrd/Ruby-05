class Post < ActiveRecord::Base
  belongs_to :user
  resourcify # for rolify
  validates :title, :body, presence: true
  
  def user
    return User.find(self.user_id)
  end
end
