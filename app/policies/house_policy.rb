class HousePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # refers to anyone being able to do these actions
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def index?
    true
  end

  def destroy?
    # - record: the houses passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    record.user == user
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end
end
