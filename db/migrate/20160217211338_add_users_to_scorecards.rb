class AddUsersToScorecards < ActiveRecord::Migration
  def change
    add_reference :scorecards, :user, index: true, null: false
  end
end
