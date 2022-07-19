class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
    record.renter == user
  end

  def create?
    true
  end

  def update?
    true
    # record.lender == user ?
  end
end
