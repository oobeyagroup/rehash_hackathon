class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :twitter_name
  
    has_secure_password
    
end
