class Location < ApplicationRecord
    has_many :reservations

    def within_operating_hours(reservation_date)
        reservation_time = Time.parse(reservation_date.to_s)
        reservation_time.strftime("%H%M%S") > opening_time.strftime("%H%M%S") && 
        reservation_time.strftime("%H%M%S") < closing_time.strftime("%H%M%S") 
    end
end
