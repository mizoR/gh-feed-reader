namespace :rss do
  desc "fetch rss"
  task fetch: :environment do
    Rss.find_each do |rss|
      feed = FeedNormalizer::FeedNormalizer.parse open(rss.url)
      feed.entries.each do |entry|
        if !Entry.exists? uid: entry.id
          rss.entries.create entry: entry
        end
      end
    end
  end
end
