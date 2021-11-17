class HenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end
end