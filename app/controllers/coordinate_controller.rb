class CoordinateController < ApplicationController
    def find
        # find the nearest point from coordinate table
        @coodinates_in_area = Coordinate.near([coordinate_params["latitude"], coordinate_params["longitude"]], 5, units: :km)
    end

    private
    def coordinate_params
      params.permit(:latitude, :longitude)
    end    
end
