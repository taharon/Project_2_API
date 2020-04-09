class PlayedGamesController < OpenReadController
  before_action :set_played_game, only: [:update, :destroy]

  # GET /played_games
  def index
    @played_games = PlayedGame.all
    render json: @played_games
    #render json: PlayedGame.where(game_instance_id: @played_games.game_instance.id)
  end

  #GET /played_games/played
  def played
    @played_games = PlayedGame.all

    render json: @played_games
    #render json: PlayedGame.where(game_instance_id: @games_list.game_instance_id)
  #  render json: PlayedGame.find(params[:id])
  end

# GET /played_games/1
  def show
    render json: PlayedGame.find(params[:id])
  end

  # POST /played_games
  def create
    @played_game = PlayedGame.new(played_game_params)

    if @played_game.save
      render json: @played_game, status: :created, location: @played_game
    else
      render json: @played_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /played_games/1
  def update
    if @played_game.update(played_game_params)
      render json: @played_game
    else
      render json: @played_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /played_games/1
  def destroy
    @played_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_played_game
      @played_game = current_user.played_games.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def played_game_params
      params.require(:played_game).permit(:user_id, :game_instance_id, :score)
    end
end
