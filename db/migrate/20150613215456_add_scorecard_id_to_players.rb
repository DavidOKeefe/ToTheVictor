class AddScorecardIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :scorecard_id, :integer
  end
end
