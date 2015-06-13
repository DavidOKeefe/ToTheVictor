class Player < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :scorecard
end
