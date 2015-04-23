class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.admin?
         can :manage, :all
       else
         can :read, Campaign 

	 can :create, EmailTemplate
         can :read, EmailTemplate 
	 can :update, EmailTemplate do |email_template|
             email_template.try(:user_id) == user.id
	 end
	 can :read, EmailTemplate do |email_template|
             email_template.try(:user_id) == user.id
         end
	 can :destroy, EmailTemplate do |email_template|
             email_template.try(:user_id) == user.id
         end


	 can :create, EmailList
         can :read, EmailList 
         can :update, EmailList do |email_list|
             email_list.try(:user_id) == user.id
         end
         can :read, EmailList do |email_list|
             email_list.try(:user_id) == user.id
         end
         can :destroy, EmailList do |email_list|
             email_list.try(:user_id) == user.id
         end

         can :download, EmailList do |email_list|
             email_list.try(:user_id) == user.id
         end




       end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
