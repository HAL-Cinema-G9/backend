module Api
    module V1
      class ReservationsController < ApplicationController
        before_action :set_reservation, only: [:show, :update, :destroy]
  
        def index
          reservations = Reservation.includes(:user, :ticket, :seat, :schedule).all
          render json: reservations, include: { user: { only: [:name, :email] },
            ticket: { only: [:name, :price] },
            seat: { only: [:column, :row] },
            schedule: { include: { movie: { only: [:title, :duration, :thumbnail] }, screen: { only: [:name] } } } }
        end
      
        def show
          reservation = Reservation.includes(:user, :ticket, :seat, :schedule).find(params[:id])
          render json: reservation, include: { user: { only: [:name, :email] },
            ticket: { only: [:name, :price] },
            seat: { only: [:column, :row] },
            schedule: { include: { movie: { only: [:title, :duration, :thumbnail] }, screen: { only: [:name] } } } }
        end

        # GET /api/v1/reservations/user?user_id=user_id
        def user
          reservations = Reservation.includes(:user, :ticket, :seat, :schedule).where(user_id: params[:user_id]).all
          render json: reservations, include: { user: { only: [:name, :email] },
            ticket: { only: [:name, :price] },
            seat: { only: [:column, :row] },
            schedule: { include: { movie: { only: [:title, :duration, :thumbnail] }, screen: { only: [:name] } } } }
        end
        
        # GET /api/v1/reservations/schedule?schedule_id=schedule_id
        def schedule
          reservations = Reservation.includes(:user, :ticket, :seat, :schedule).where(schedule_id: params[:schedule_id]).all
          render json: reservations, include: { user: { only: [:name, :email] },
            ticket: { only: [:name, :price] },
            seat: { only: [:column, :row] },
            schedule: { include: { movie: { only: [:title, :duration, :thumbnail] }, screen: { only: [:name] } } } }
        end
  
        def create
          # Check if a reservation with the same schedule_id and seat_id already exists
          existing_reservation = Reservation.find_by(schedule_id: params[:schedule_id], seat_id: params[:seat_id])
  
          if existing_reservation
            render json: { error: "A reservation with the same schedule and seat already exists" }, status: :unprocessable_entity
          else
            reservation = Reservation.new(reservation_params)
  
            if reservation.save
              render json: reservation, status: :created
            else
              render json: reservation.errors, status: :unprocessable_entity
            end
          end
        end
  
        def update
          if @reservation.update(reservation_params)
            render json: @reservation
          else
            render json: @reservation.errors, status: :unprocessable_entity
          end
        end
  
        def destroy
          @reservation.destroy
          head :no_content
        end
  
        private
  
        def set_reservation
          @reservation = Reservation.find(params[:id])
        end
  
        def reservation_params
          params.permit(:user_id, :ticket_id, :seat_id, :schedule_id)
        end
      end
    end
end