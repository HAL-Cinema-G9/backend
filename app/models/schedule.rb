class Schedule < ApplicationRecord
  belongs_to :movie
  belongs_to :screen

  # If you have a `Reservation` model and a `has_many` association for reservations in the `Schedule` model, you can use it as follows:
  # has_many :running, class_name: 'Schedule', foreign_key: 'movie_id'
end
