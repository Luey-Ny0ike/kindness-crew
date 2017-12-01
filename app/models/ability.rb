class Ability
  include CanCan::Ability

  def initialize(user)

      if user && user.superadmin_role?
            can :manage, :all
            can :access, :rails_admin       # only allow admin users to access Rails Admin
            can :dashboard                  # allow access to dashboard
      end
      if user && user.supervisor_role?
            can :manage, User
      end
  end
end
