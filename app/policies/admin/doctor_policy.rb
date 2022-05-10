module Admin
  class DoctorPolicy < PagePolicy
    def new?
      false
    end

    def create?
      new?
    end
  end
end
