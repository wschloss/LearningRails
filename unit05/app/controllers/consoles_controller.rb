class ConsolesController < ApplicationController
  before_action :set_console, only: [:show, :edit, :update, :destroy]

  # GET /consoles
  def index
    @consoles = Console.all
  end

  # GET /consoles/1
  def show
    # Get games for display
    @games = @console.games.order(:name)
  end

  # GET /consoles/new
  def new
    @console = Console.new
  end

  # GET /consoles/1/edit
  def edit
  end

  # POST /consoles
  def create
    @console = Console.new(console_params)

    respond_to do |format|
      if @console.save
        format.html { redirect_to @console, notice: 'Console was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /consoles/1
  def update
    respond_to do |format|
      if @console.update(console_params)
        format.html { redirect_to @console, notice: 'Console was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /consoles/1
  def destroy
    @console.destroy
    respond_to do |format|
      format.html { redirect_to consoles_url, notice: 'Console was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_console
      @console = Console.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def console_params
      params.require(:console).permit(:name, :company)
    end
end
