class CreateTwitstreams < ActiveRecord::Migration
  def change
    create_table :twitstreams do |t|
      t.string :text
      t.string :name
      t.datetime :tweeted_at
      t.datetime :piclink
      t.string :twitterhandle

      t.timestamps
    end
  end
end
