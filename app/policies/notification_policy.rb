# frozen_string_literal: true

class NotificationPolicy < ApplicationPolicy

  def create?
    true
  end

  def destroy?
    true
  end
end
