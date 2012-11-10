class AddTweetedAtToTweetstream < ActiveRecord::Migration
  def change
    add_column :twitstreams, :tweeted_at, :datetime
  end
end
