require 'tweetstream'
    
class SchedulesController < ApplicationController
  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schedules }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @schedule = Schedule.find(params[:id])
  
puts "1"
    TweetStream.configure do |config|
      config.consumer_key       = '2ZlLFJN0JDIvSwVG3hWw'
      config.consumer_secret    = 'oZsLqN9TQc1IERxGRMieRLmk6U5liqUQe9yVa863BLw'
      config.oauth_token        = '23986022-9SfbGAvrKTvyCGxD6M28kA4vRLXlAMClBVerpPcYI'
      config.oauth_token_secret = 'WFefjLwdcLqejcmFhYFXiBYOUzEihgLMS5HpVsm33w'
      config.auth_method        = :oauth
    end
puts "2"
    status = TweetStream::Daemon.new('tracker start').sample
puts "3"
    @this_tweet = Twitstream.new  :name => status.user.name,
                      :twitterhandle => status.user.screen_name,
                      :text => status.text,
                      :tweeted_at => status.created_at,
                      :piclink =>  status.user.profile_image_url
    
                      respond_to do |format|
                        format.html # show.html.erb
                        format.json { render json: @schedule }
                      end  
  end

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @schedule = Schedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @schedule }
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(params[:schedule])

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render json: @schedule, status: :created, location: @schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url }
      format.json { head :no_content }
    end
  end
end
