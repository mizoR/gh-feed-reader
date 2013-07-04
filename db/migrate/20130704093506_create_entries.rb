class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :author_id, null: true
      t.integer :rss_id, null: true
      t.string :uid, null: false
      t.string :url, default: ''
      t.string :title, default: ''
      t.text :content, default: ''
      t.datetime :published_at, null: false

      t.timestamps
    end

    add_index :entries, :author_id
    add_index :entries, :rss_id
    add_index :entries, :published_at
    add_index :entries, :created_at
    add_index :entries, :updated_at
  end
end
