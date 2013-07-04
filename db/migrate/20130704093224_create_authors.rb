class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :uid, null: false
      t.string :email, default: ''
      t.string :url, default: ''

      t.timestamps
    end

    add_index :authors, :uid, unique: true
    add_index :authors, :email
    add_index :authors, :created_at
    add_index :authors, :updated_at
  end
end
