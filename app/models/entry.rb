class Entry < ActiveRecord::Base
  default_scope lambda { order :published_at }

  attr_accessor :authors
  belongs_to :author, foreign_key: :user_id, class_name: 'User', autosave: true

  before_save do
    author = User.find_by_uid self.authors[0]
    author ||= self.create_author uid: self.authors[0]
    self.author = author
  end

  def entry=(entry)
    self.authors = entry.author.split
    self.uid     = entry.id
    self.url     = entry.url
    self.title   = entry.title
    self.content = entry.content
    self.published_at = entry.date_published
  end
end
