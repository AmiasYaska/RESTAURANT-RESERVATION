module Location
    class ReservationsController < ApplicationController
        before_action :set_location

        def new
            @location = @Locations.new
        end

        def create
        end

        private
        def set_location
            location = Location.find(params[:location_id])
        end
    end
end