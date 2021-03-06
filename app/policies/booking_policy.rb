class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def destroy?
    true
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_admin?
  end

   def user_is_owner_or_admin?
    record.user == user || user.admin?
  end
end
