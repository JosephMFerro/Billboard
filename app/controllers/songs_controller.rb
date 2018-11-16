class SongsController < ApplicationController
  before_action :set_song, except: [:index, :new, :create]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def update
    if @song.update(billboardmodel_params)
      redirect_to billboardmodels_path
    else
      render :edit
    end
  end

  def destroy
    @billboardmodel.destroy
    redirect_to billboardmodels_path
  end

  private
    def billboardmodel_params
      params.require(:billboardmodel).permit(:name, :location)
    end

    def set_billboardmodel
      @billboardmodel = Billboardmodel.find(params[:id])
    end
end