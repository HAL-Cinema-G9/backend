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

        def user
          user = User.find(params[:user_id])
          reservations = user.reservations.includes(:ticket, :seat, :schedule)
          render json: reservations, include: {
            ticket: { only: [:name, :price] },
            seat: { only: [:column, :row] },
            schedule: { include: { movie: { only: [:title, :duration, :thumbnail] }, screen: { only: [:name] } } }
          }
        end
  
        def create
          reservation = Reservation.new(reservation_params)
  
          if reservation.save
            render json: reservation, status: :created
          else
            render json: reservation.errors, status: :unprocessable_entity
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
          params.require(:reservation).permit(:user_id, :ticket_id, :seat_id, :schedule_id)
        end
      end
    end
end