class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      ## Database Authenticatable
      t.string :email,              null: false, unique: true
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
