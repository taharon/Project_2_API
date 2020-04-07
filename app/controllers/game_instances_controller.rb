class GameInstancesController < ApplicationController
  before_action :set_game_instance, only: [:show, :update, :destroy]

  # GET /game_instances
  def index
    @game_instances = GameInstance.all

    render json: @game_instances
  end

  # GET /game_instances/1
  def show
    render json: @game_instance
  end

  # POST /game_instances
  def create
    
    @game_instance = GameInstance.new(game_instance_params)

    if @game_instance.save
      render json: @game_instance, status: :created, location: @game_instance
    else
      render json: @game_instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_instances/1
  def update
    if @game_instance.update(game_instance_params)
      render json: @game_instance
    else
      render json: @game_instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_instances/1
  def destroy
    @game_instance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_instance
      @game_instance = GameInstance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_instance_params
      params.require(:game_instance).permit(:when, :name)
    end
end
