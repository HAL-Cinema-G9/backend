class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  belongs_to :seat
  belongs_to :schedule
end
