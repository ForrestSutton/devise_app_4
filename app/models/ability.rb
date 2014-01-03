#ability.rb
class Ability
  include CanCan::Ability

  # def initialize(user)
  #   user ||= User.new # guest user (not logged in)
  #   if user.admin?
  #      can :manage, :all
  #   else
  #      can :read, :all
  #   end
    #can :manage, :all if user.has_role? :admin
    
    def initialize(user)
      can  :read, :all
  end
end