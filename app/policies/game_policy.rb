class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def launch?
    record.user == user
  end

  def stop?
    record.user == user
  end
end
