class Reservation < ApplicationRecord
  belongs_to :location
  belongs_to :customer
end
