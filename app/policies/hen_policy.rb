class HenPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.user == current_user
  end

  def create?
    true
  end

  def destroy?
    record.user == current_user
  end

  def show?
    true
  end

  def new?
    true
  end
end
