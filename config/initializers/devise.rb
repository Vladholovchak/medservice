Devise.setup do |config|
  config.mailer_sender = 'medservise@noreply.com'

  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism

  config.authentication_keys = [:phone]
  config.case_insensitive_keys = [:phone]
  config.strip_whitespace_keys = [:phone]
  config.skip_session_storage = [:http_auth]

  # ==> Configuration for :database_authenticatable

  config.stretches = Rails.env.test? ? 1 : 12

  # ==> Configuration for :validatable
  # Range for password length.
  config.password_length = 6..128

  # ==> Configuration for :timeoutable

  config.sign_out_via = :delete
end
