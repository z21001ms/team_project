class CoordinateController < ApplicationController
    def find
      # find the nearest point from coordinate table
      @coordinate = Coordinate.near(coordinate_params["coordinate"].split(","), 5, units: :km).first
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
