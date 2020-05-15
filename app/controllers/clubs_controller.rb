class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :update, :destroy]

  # GET /clubs
  def index
    @clubs = Club.all

    render json: @clubs, include: :pros
  end

  # GET /clubs/1
  def show
    render json: @club, include: :pros
  end

  # POST /clubs
  def create
    @club = Club.new(club_params.reject! { |k| k == "pro_id"})
    @pro = Pro.find(club_params["pro_id"])
    if @club.save
      pro_club_ids = @pro.clubs.ids.push(@club.id)
      @pro.update(club_ids: pro_club_ids)
      render json: @club, status: :created, location: @club
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clubs/1
  def update
    if @club.update(club_params)
      render json: @club
    else
      render json: @club.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clubs/1
  def destroy
    @club.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_params
      params.require(:club).permit(:club_type, :brand, :model, :loft, :pro_id)
    end
end
