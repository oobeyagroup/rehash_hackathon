class Tweetstream < ActiveRecord::Base
  attr_accessible :created_at, :name, :text
end
