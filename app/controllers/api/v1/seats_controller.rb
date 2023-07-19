module Api
    module V1
      class SeatsController < ApplicationController
        before_action :set_seat, only: [:show, :update, :destroy]
  
        # GET /api/v1/seats
        def index
          seats = Seat.includes(:screen).all
          render json: seats, include: :screen
        end
  
        # GET /api/v1/seats/:id
        def show
          seat = Seat.includes(:screen).find(params[:id])
          render json: seat, include: :screen
        end
  
        # POST /api/v1/seats
        def create
          @seat = Seat.new(seat_params)
  
          if @seat.save
            render json: @seat, status: :created
          else
            render json: @seat.errors, status: :unprocessable_entity
          end
        end
  
        # PATCH/PUT /api/v1/seats/:id
        def update
          if @seat.update(seat_params)
            render json: @seat
          else
            render json: @seat.errors, status: :unprocessable_entity
          end
        end
  
        # DELETE /api/v1/seats/:id
        def destroy
          @seat.destroy
          head :no_content
        end
  
        private
  
        def set_seat
          @seat = Seat.find(params[:id])
        end
  
        def seat_params
          params.require(:seat).permit(:screen_id, :column, :row)
        end
      end
    end
end