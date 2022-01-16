class SongController < ApplicationController
    def index
        @songs = Song.all
    end

    def create
        @song = Song.new(song_params)
        @song.platform = 1 # Platform id of youtube
        # TODO: Get coordinate value from the form
        coordinate = Coordinate.new(latitude: 50, longitude: 50)
        @song.coordinate << coordinate
        @song.truncate_youtube_url()
        if @song.save
            flash[:success] = "Your song registration successfully"
            redirect_to "/"
        else
            redirect_to "/register"
        end
    end

    private
    def song_params
      params.permit(:url)
    end

end
