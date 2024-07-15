class Location < ApplicationRecord
    has_many :reservations

    def operating_hours(reservation_date)
        
    end
end
