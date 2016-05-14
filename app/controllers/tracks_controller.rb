class TracksController < ApplicationController

  # GET /tracks
  def index
    @tracks = Track.order(created_at: :desc)
  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # POST /tracks
  def create
    # Create our track
    @track = Track.new(_track_params)

    if @track.save
      # If we've saved successfully, redirect to another page (/tracks ?)
      redirect_to tracks_path
    else
      # Otherwise, show the new page
      render :new
    end
  end

  private

  def _track_params
    params
      .require(:track)
      .permit(:title)
  end

end

