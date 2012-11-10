class RenameTweetstreamToTwitstream < ActiveRecord::Migration
   def self.up
      rename_table :twitstreams, :twitstreams
    end

   def self.down
      rename_table :twitstreams, :twitstreams
   end
  end