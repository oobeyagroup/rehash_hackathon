# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'rubygems'
require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = '2ZlLFJN0JDIvSwVG3hWw'
  config.consumer_secret    = 'oZsLqN9TQc1IERxGRMieRLmk6U5liqUQe9yVa863BLw'
  # config.oauth_token        = 'vP9EJzSC4ghbGwJw999CDtNaMPU1RYVcHJ353zdU'
  # config.oauth_token_secret = '2GUkZZAP5q5rz8SdZrnLXrZFWhoa1EFjrxG8dXeGnr8'
  config.oauth_token        = '23986022-9SfbGAvrKTvyCGxD6M28kA4vRLXlAMClBVerpPcYI'
  config.oauth_token_secret = 'WFefjLwdcLqejcmFhYFXiBYOUzEihgLMS5HpVsm33w'
  config.auth_method        = :oauth
end

count = 0
Twitstream.destroy_all

TweetStream::Client.new().sample do |status|
  print "."
  STDOUT.flush
  count += 1
  Twitstream.create  :name => status.user.name,
                    :twitterhandle => status.user.screen_name,
                    :text => status.text,
                    :tweeted_at => status.created_at,
                    :piclink =>  status.user.profile_image_url
  if count == 200 
    break
  end   
end
