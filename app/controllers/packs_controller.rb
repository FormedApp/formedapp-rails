class PacksController < ApplicationController

  # GET /packs
  def index
    @packs = Pack.order(created_at: :desc)
  end

  # GET /packs/new
  def new
    @pack = Pack.new
  end

  # POST /packs
  def create
    # Create our pack
    @pack = Pack.new(_pack_params)

    if @pack.save
      # If we've saved successfully, redirect to another page (/packs ?)
      redirect_to packs_path
    else
      # Otherwise, show the new page
      render :new
    end
  end

  private

  def _pack_params
    params
      .require(:pack)
      .permit(:title)
  end

end

