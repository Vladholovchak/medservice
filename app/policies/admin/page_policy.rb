module Admin
  class PagePolicy < ApplicationPolicy
    def index?
      admin?
    end

    def show?
      index?
    end

    def new?
      admin?
    end

    def create?
      new?
    end

    def edit?
      admin?
    end

    def update?
      edit?
    end

    def destroy?
      admin?
    end
  end
end
