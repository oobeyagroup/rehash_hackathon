class AddTwitterhandleToTweetstream < ActiveRecord::Migration
  def change
    add_column :twitstreams, :twitterhandle, :string
  end
end
