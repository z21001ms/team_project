class SongController < ApplicationController
    def index
        @songs = Song.all
    end

    def create
        @song = Song.new(url: song_coordinate_params["url"])
        @song.platform = 1 # Platform id of youtube
        coordinate = Coordinate.new(latitude: song_coordinate_params["latitude"].to_f, 
                                    longitude: song_coordinate_params["longitude"].to_f)
        p("--------------")
        p(coordinate)
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
    def song_coordinate_params
      params.permit(:url, :latitude, :longitude)
    end

end
