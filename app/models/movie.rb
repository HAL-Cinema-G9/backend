class Movie < ApplicationRecord
    has_many :schedules
    # has_many :running, class_name: 'Schedule', foreign_key: 'movie_id'
end
