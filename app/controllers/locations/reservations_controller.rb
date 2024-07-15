module Locations
    class ReservationsController < ApplicationController
        before_action :set_location

        def new
            @reservation = @location.reservations.new
        end

        def create
            @reservation = @location.reservations.new(reservation_date: params[:reservation_date])

            

        end

        private
        def set_location
            @location = Location.find(params[:location_id])
        end
    end
end