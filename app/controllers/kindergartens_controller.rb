class KindergartensController < ApplicationController
  before_action :set_kindergarten, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  # GET /kindergartens or /kindergartens.json
  def index
    @q = Kindergarten.ransack(params[:q])
    @kindergartens = @q.result(distinct: true).page(params[:page])

    if @kindergartens.count == 0
      flash[:notice] = "Sin resultados"
    end
  end

  # GET /kindergartens/1 or /kindergartens/1.json
  def show
  end

  # GET /kindergartens/new
  def new
    @kindergarten = current_user.kindergartens.build
  end

  # GET /kindergartens/1/edit
  def edit
  end

  # POST /kindergartens or /kindergartens.json
  def create
    @kindergarten = current_user.kindergartens.build(kindergarten_params)

    respond_to do |format|
      if @kindergarten.save
        format.html { redirect_to kindergarten_url(@kindergarten), notice: "Kindergarten was successfully created." }
        format.json { render :show, status: :created, location: @kindergarten }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kindergartens/1 or /kindergartens/1.json
  def update
    respond_to do |format|
      if @kindergarten.update(kindergarten_params)
        format.html { redirect_to kindergarten_url(@kindergarten), notice: "Kindergarten was successfully updated." }
        format.json { render :show, status: :ok, location: @kindergarten }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kindergartens/1 or /kindergartens/1.json
  def destroy
    @kindergarten.destroy

    respond_to do |format|
      format.html { redirect_to kindergartens_url, notice: "Kindergarten was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kindergarten
      @kindergarten = Kindergarten.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kindergarten_params
      params.require(:kindergarten).permit(:name, :description, :city_id, :phone, :user_id, :image, :price,:pet_ids => [])
    end

    def authorize_user
    unless @kindergarten.user == current_user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to @kindergarten
    end
  end
end
