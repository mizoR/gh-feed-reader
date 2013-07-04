class Entry < ActiveRecord::Base
  default_scope lambda { order 'published_at DESC' }

  attr_accessor :authors
  belongs_to :author, foreign_key: :author_id, class_name: 'Author', autosave: true

  before_save do
    author = Author.find_by_uid self.authors[0]
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
