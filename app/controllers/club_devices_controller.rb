class ClubDevicesController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  caches_page :index, :gzip => :best_speed

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Individual.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Individual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:department, :number, :date_of_issue, :valid_to, :call_sign, :category, :transmitter_power, :station_location)
    end
end
