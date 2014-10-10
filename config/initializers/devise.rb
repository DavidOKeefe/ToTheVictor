Devise.setup do |config|

  # ORM configuration
  require 'devise/orm/active_record'

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
