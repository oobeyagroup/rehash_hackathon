class SessionsController < ApplicationController
  def hi
  end
  
  def introduce
    user = User.find_by_twitter_name(params[:twitter_name])
    
    if user != nil && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      redirect_to root_url, :notice => "Welcome back, #{user.name}!"
    else
      redirect_to login_url, :notice => "Sorry, I don't know that Twitter name and/or password."
    end
  end

  def bye
    session[:user_id] = nil
    session[:user_name] = nil
    redirect_to root_url
  end
end


