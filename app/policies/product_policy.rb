class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_admin?
  end
  # - record: the product passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin?
  end
end
