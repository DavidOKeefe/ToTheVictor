Devise.setup do |config|

  # ORM configuration
  require 'devise/orm/active_record'

  # https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template
  config.sign_out_via = :get

  # Authentication
  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]

  # database_authenticatable
  config.stretches = Rails.env.test? ? 1 : 10

  # Validatable
  config.password_length = 8..128

  # Recoverable
  config.reset_password_within = 6.hours

end
