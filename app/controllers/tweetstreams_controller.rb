class TweetstreamsController < ApplicationController
  # GET /tweetstreams
  # GET /tweetstreams.json
  def index
    @tweetstreams = Tweetstream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweetstreams }
    end
  end

  # GET /tweetstreams/1
  # GET /tweetstreams/1.json
  def show
    @tweetstream = Tweetstream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweetstream }
    end
  end

  # GET /tweetstreams/new
  # GET /tweetstreams/new.json
  def new
    @tweetstream = Tweetstream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tweetstream }
    end
  end

  # GET /tweetstreams/1/edit
  def edit
    @tweetstream = Tweetstream.find(params[:id])
  end

  # POST /tweetstreams
  # POST /tweetstreams.json
  def create
    @tweetstream = Tweetstream.new(params[:tweetstream])

    respond_to do |format|
      if @tweetstream.save
        format.html { redirect_to @tweetstream, notice: 'Tweetstream was successfully created.' }
        format.json { render json: @tweetstream, status: :created, location: @tweetstream }
      else
        format.html { render action: "new" }
        format.json { render json: @tweetstream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tweetstreams/1
  # PUT /tweetstreams/1.json
  def update
    @tweetstream = Tweetstream.find(params[:id])

    respond_to do |format|
      if @tweetstream.update_attributes(params[:tweetstream])
        format.html { redirect_to @tweetstream, notice: 'Tweetstream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tweetstream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweetstreams/1
  # DELETE /tweetstreams/1.json
  def destroy
    @tweetstream = Tweetstream.find(params[:id])
    @tweetstream.destroy

    respond_to do |format|
      format.html { redirect_to tweetstreams_url }
      format.json { head :no_content }
    end
  end
end
