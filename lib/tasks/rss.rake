namespace :rss do
  desc "fetch rss"
  task fetch: :environment do
    Rss.find_each do |rss|
      feed = FeedNormalizer::FeedNormalizer.parse open(rss.url)
      feed.entries.each do |entry|
        rss.entries.create entry: entry
      end
    end
  end
end
