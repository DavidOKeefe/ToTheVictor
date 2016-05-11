class Player < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :name, :scope => :scorecard_id
  belongs_to :scorecard
end
