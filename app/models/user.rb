class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable,
         :registerable

  validates :email,     presence: true, uniqueness: true
  validates :password,  presence: true
end
