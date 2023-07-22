class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :movie_id, :screen_id
  has_one :movie
  has_one :screen
end