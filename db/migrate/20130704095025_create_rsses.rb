class CreateRsses < ActiveRecord::Migration
  def change
    create_table :rsses do |t|
      t.string :uid, null: false, unique: true
      t.string :url, null: false

      t.timestamps
    end

    add_index :rsses, :uid
    add_index :rsses, :created_at
    add_index :rsses, :updated_at
  end
end
