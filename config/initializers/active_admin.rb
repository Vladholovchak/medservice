ActiveAdmin.setup do |config|
  # == Site Title

  config.site_title = 'Medservice'
  config.site_title_link = '/'

  # == User Authentication

  config.authentication_method = :authenticate_user!

  # == User Authorization

  config.authorization_adapter = ActiveAdmin::PunditAdapter
  config.pundit_default_policy = 'Admin::PagePolicy'
  config.pundit_policy_namespace = :admin
  config.on_unauthorized_access = :access_denied

  # == Current User

  config.current_user_method = :current_user

  # == Logging Out

  config.logout_link_path = :destroy_user_session_path
  config.logout_link_method = :delete

  # == Admin Comments

  config.comments = false
  config.comments_menu = false

  # == Batch Actions

  config.batch_actions = true

  # == Attribute Filters

  config.filter_attributes = [:encrypted_password, :password, :password_confirmation]

  # == Localize Date/Time Format

  config.localize_format = :long
end
