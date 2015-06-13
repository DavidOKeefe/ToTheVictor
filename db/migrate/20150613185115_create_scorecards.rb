class CreateScorecards < ActiveRecord::Migration
  def change
    create_table :scorecards do |t|

      t.timestamps
    end
  end
end
