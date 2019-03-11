class TourPolicy < ApplicationPolicy

  def new?
    # By returning true we allow our users to create a tour
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def goto?
    true
  end

  def edit?
    # Instead of current_user we have -> user
    # Instead of tour we have -> record
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  def user?
    true
  end

  private

  def user_is_owner?
    record.user == user || user.admin
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
