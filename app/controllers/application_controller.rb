class ApplicationController < ActionController::Base
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end

  private

    def user_not_authorized
      flash[:alert] = 'You are not authorized to perform this action.'
      redirect_back(fallback_location: root_path)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
end
