class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :twitter_name
end
