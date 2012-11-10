class Twitstream < ActiveRecord::Base
  attr_accessible :name, :twitterhandle, :text, :piclink, :tweeted_at
end
