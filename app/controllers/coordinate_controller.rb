class CoordinateController < ApplicationController
    def find
        # find the nearest point from coordinate table
        coordinate = coordinate_params["coordinate"].split(",")
        @coodinates_in_area = Coordinate.near(coordinate, 5, units: :km)
    end

    def create
      @coordinate = Coordinate.new(coordinate_params)
      @coordinate.save
    end

    private
    def coordinate_params
      params.permit(:coordinate)
    end    
end
