class AddPiclinkToTweetstream < ActiveRecord::Migration
  def change
    add_column :twitstreams, :piclink, :string
  end
end
