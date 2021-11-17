class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def update?
    record.user == current_user
  end

  def destroy?
    record.user == current_user
  end

  def show?
    true
  end

  def create?
    true
  end
end
