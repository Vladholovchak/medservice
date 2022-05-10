module Admin
  class UserPolicy < PagePolicy
    def index?
      admin?
    end

    def show?
      index?
    end

    def new?
      false
    end

    def create?
      new?
    end
  end
end
