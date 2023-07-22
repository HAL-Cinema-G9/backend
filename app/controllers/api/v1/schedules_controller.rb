module Api
    module V1
      class SchedulesController < ApplicationController
        before_action :set_schedule, only: [:show, :update, :destroy]
  
        def index
          schedules = Schedule.includes(:movie, :screen).all
          render json: schedules, include: [:movie, :screen]
        end

        def week
          start_date = Date.today
          end_date = start_date + 7.days
          week_schedules = Schedule.includes(:movie, :screen)
            .where(date: start_date..end_date)
            .all
          # render json: week_schedules, each_serializer: ScheduleSerializer
          render json: week_schedules, include: [:movie, :screen]

        end
  
        def show
          schedule = Schedule.includes(:movie, :screen).find(params[:id])
          render json: schedule, serializer: ScheduleSerializer
        end
  
        def create
          schedule = Schedule.new(schedule_params)
  
          if schedule.save
            render json: schedule, status: :created
          else
            render json: schedule.errors, status: :unprocessable_entity
          end
        end
  
        def update
          if @schedule.update(schedule_params)
            render json: @schedule
          else
            render json: @schedule.errors, status: :unprocessable_entity
          end
        end
  
        def destroy
          @schedule.destroy
          head :no_content
        end
  
        private
  
        def set_schedule
          @schedule = Schedule.find(params[:id])
        end
  
        def schedule_params
          params.require(:schedule).permit(:movie_id, :screen_id, :date)
        end
      end
    end
end