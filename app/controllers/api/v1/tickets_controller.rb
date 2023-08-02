module Api
    module V1
      class TicketsController < ApplicationController
        before_action :set_ticket, only: [:show, :update, :destroy]
  
        def index
          @tickets = Ticket.all
          render json: @tickets
        end
  
        def show
          render json: @ticket
        end
  
        def create
          @ticket = Ticket.new(ticket_params)
  
          if @ticket.save
            render json: @ticket, status: :created
          else
            render json: @ticket.errors, status: :unprocessable_entity
          end
        end
  
        def update
          if @ticket.update(ticket_params)
            render json: @ticket
          else
            render json: @ticket.errors, status: :unprocessable_entity
          end
        end
  
        def destroy
          @ticket.destroy
          head :no_content
        end
  
        private
  
        def set_ticket
          @ticket = Ticket.find(params[:id])
        end
  
        def ticket_params
          params.permit(:name, :price)
        end
      end
    end
end