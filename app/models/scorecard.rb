class Scorecard < ActiveRecord::Base
  has_many :players, dependent: :destroy
  belongs_to :user

  validates :user_id, presence: true
end
