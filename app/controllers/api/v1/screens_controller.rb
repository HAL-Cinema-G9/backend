module Api
    module V1
      class ScreensController < ApplicationController
        before_action :set_screen, only: [:show, :update, :destroy]
  
        # GET /api/v1/screens
        def index
          @screens = Screen.all
          render json: @screens
        end
  
        # GET /api/v1/screens/:id
        def show
          render json: @screen
        end
  
        # POST /api/v1/screens
        def create
          @screen = Screen.new(screen_params)
  
          if @screen.save
            render json: @screen, status: :created
          else
            render json: @screen.errors, status: :unprocessable_entity
          end
        end
  
        # PATCH/PUT /api/v1/screens/:id
        def update
          if @screen.update(screen_params)
            render json: @screen
          else
            render json: @screen.errors, status: :unprocessable_entity
          end
        end
  
        # DELETE /api/v1/screens/:id
        def destroy
          @screen.destroy
          head :no_content
        end
  
        private
  
        def set_screen
          @screen = Screen.find(params[:id])
        end
  
        def screen_params
          params.permit(:name)
        end
      end
    end
  end