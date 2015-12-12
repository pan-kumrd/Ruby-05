class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.has_role? :admin
        can :manage, :all
      else
        can :create, Post
        can :update, Post, :user_id => user.id
        can :destroy, Post, :user_id => user.id
      end
    else
      can :read, Post
    end
  end
end
