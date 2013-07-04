class Rss < ActiveRecord::Base
  has_many :entries
end
