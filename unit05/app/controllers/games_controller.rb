class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :set_console

  # GET consoles/1/games/1
  def show
  end

  # GET consoles/1/games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST consoles/1/games
  def create
    @game = Game.new(game_params)
    @game.console_id = @console.id

    respond_to do |format|
      if @game.save
        format.html { redirect_to [@console, @game], notice: 'Game was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT consoles/1/games/1
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to [@console, @game], notice: 'Game was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE consoles/1/games/1
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to console_path(@console), notice: 'Game was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @console = Console.find(params[:console_id])
      @game = Game.find(params[:id])
    end

    def set_console
      @console = Console.find(params[:console_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :price, :genre, :release_year)
    end
end
