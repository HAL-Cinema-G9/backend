module Api
    module V1
      class ReservationsController < ApplicationController
        before_action :set_reservation, only: [:show, :update, :destroy]
  
        def index
          reservations = Reservation.all
          render json: reservations
        end
  
        def show
          render json: @reservation
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