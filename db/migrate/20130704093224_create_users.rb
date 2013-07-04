class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :email, default: ''
      t.string :url, default: ''

      t.timestamps
    end

    add_index :users, :uid, unique: true
    add_index :users, :email
    add_index :users, :created_at
    add_index :users, :updated_at
  end
end
