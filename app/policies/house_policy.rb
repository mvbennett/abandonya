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
    # change this!
    true
  end
end
