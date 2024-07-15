module Locations
    class ReservationsController < ApplicationController
        before_action :set_location

        def new
            @reservation = @location.reservations.new
        end

        def create
            @reservation = @location.reservations.new(reservation_date: params[:reservation_date])

            if @location.operating_hours(@reservation.reservation_date)
                puts "Outside of hours"

            else

                render :new, alert: "The time you chose is outside the operating hours"
            end

        end

        private
        def set_location
            @location = Location.find(params[:location_id])
        end
    end
end