class CoordinateController < ApplicationController
    def new
        @corrdinate = Coordinate.new
        redirect_to :find
      end

    def find
        @coordinate = Coordinate.new(coordinate_params)

        # find the nearest point from coordinate table
        @coodinates_in_area = Coordinate.near([@coordinate.latitude, @coordinate.longitude], 5, units: :km)
    end

    private
    def coordinate_params
      params.permit(:latitude, :longitude)
    end    
end
