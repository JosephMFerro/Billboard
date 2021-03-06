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
    if @song.update(song_params)
      redirect_to songs_path
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
    def song_params
      params.require(:song).permit(:name)
    end

    def set_song
      @song = Song.find(params[:id])
    end
end