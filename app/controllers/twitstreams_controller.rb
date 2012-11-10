class TwitstreamsController < ApplicationController
  # GET /twitstreams
  # GET /twitstreams.json
  def index
    @twitstreams = Twitstream.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twitstreams }
    end
  end

  # GET /twitstreams/1
  # GET /twitstreams/1.json
  def show
    @twitstream = Twitstream.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twitstream }
    end
  end

  # GET /twitstreams/new
  # GET /twitstreams/new.json
  def new
    @twitstream = Twitstream.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twitstream }
    end
  end

  # GET /twitstreams/1/edit
  def edit
    @twitstream = Twitstream.find(params[:id])
  end

  # POST /twitstreams
  # POST /twitstreams.json
  def create
    @twitstream = Twitstream.new(params[:twitstream])

    respond_to do |format|
      if @twitstream.save
        format.html { redirect_to @twitstream, notice: 'Tweetstream was successfully created.' }
        format.json { render json: @twitstream, status: :created, location: @twitstream }
      else
        format.html { render action: "new" }
        format.json { render json: @twitstream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twitstreams/1
  # PUT /twitstreams/1.json
  def update
    @twitstream = Twitstream.find(params[:id])

    respond_to do |format|
      if @twitstream.update_attributes(params[:twitstream])
        format.html { redirect_to @twitstream, notice: 'Tweetstream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twitstream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitstreams/1
  # DELETE /twitstreams/1.json
  def destroy
    @twitstream = Twitstream.find(params[:id])
    @twitstream.destroy

    respond_to do |format|
      format.html { redirect_to twitstreams_url }
      format.json { head :no_content }
    end
  end
end
