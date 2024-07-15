class Location < ApplicationRecord
    has_many :reservations

    def operating_hours(reservation_date)
        reservation_date.to_time < opening_time && reservation_date.to_time < closing_time
    end
end
