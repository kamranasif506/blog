class Ability
    include CanCan::Ability
  
    def initialize(user)
      user ||= User.new # Guest user
  
      # Define abilities for a user with the "admin" role
      if user.admin?
        can :manage, :all
      else
        # Define abilities for a regular user
        can :manage, Post, user_id: user.id
        can :manage, Comment, user_id: user.id
      end
    end
  end
  