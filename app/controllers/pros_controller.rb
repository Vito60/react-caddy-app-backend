class ProsController < ApplicationController
  before_action :set_pro, only: [:show, :update, :destroy]

  # GET /pros
  def index
    @pros = Pro.all

    render json: @pros, include: :clubs, except: :updated_at
  end

  # GET /pros/1
  def show
    render json: @pro, include: :clubs, except: :updated_at
  end

  # POST /pros
  def create
    @pro = Pro.new(pro_params)
    if @pro.save
      render json: @pro, status: :created, location: @pro
    else
      render json: @pro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pros/1
  def update
    if @pro.update(pro_params)
      render json: @pro
    else
      render json: @pro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pros/1
  def destroy
    @pro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro
      @pro = Pro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pro_params
      params.require(:pro).permit(:first_name, :last_name, :hometown, :home_state, :age)
    end
end
