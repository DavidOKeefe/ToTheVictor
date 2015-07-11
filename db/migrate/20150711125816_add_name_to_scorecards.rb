class AddNameToScorecards < ActiveRecord::Migration
  def change
    add_column :scorecards, :name, :string, null: false
  end
end
