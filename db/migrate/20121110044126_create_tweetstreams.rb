class CreateTweetstreams < ActiveRecord::Migration
  def change
    create_table :twitstreams do |t|
      t.string :text
      t.string :name
      t.datetime :created_at

      t.timestamps
    end
  end
end
