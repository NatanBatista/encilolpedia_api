class Api::ChampionsController < ApplicationController
  before_action :set_champion, only: [:show, :update, :destroy]

  # GET /champions
  def index
    @champions = Champion.all.by_name

    render json: @champions
  end

  # GET /champions/
  def show
    render json: @champion
  end

  # POST /champions
  def create
    @champion = Champion.new(champion_params)

    if @champion.save
      render json: @champion, status: :created, location: api_champion_url(@champion.name)
    else
      render json: @champion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /champions/name
  def update
    if @champion.update(champion_params)
      render json: @champion
    else
      render json: @champion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /champions/name
  def destroy
    @champion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion
      @champion = Champion.find_by(name: params[:name])
    end

    # Only allow a list of trusted parameters through.
    def champion_params
      params.require(:champion).permit(:name, :description)
    end
end
