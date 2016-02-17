class User < ActiveRecord::Base
  has_many :scorecards

  devise :database_authenticatable,
         :recoverable,
         :registerable

  validates :email,     presence: true, uniqueness: true
  validates :password,  presence: true
end
