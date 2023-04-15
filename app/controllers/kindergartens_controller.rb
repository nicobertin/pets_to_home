class KindergartensController < ApplicationController
  before_action :set_kindergarten, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /kindergartens or /kindergartens.json
  def index
    @kindergartens = Kindergarten.all
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
      params.require(:kindergarten).permit(:name, :description, :city_id, :phone, :user_id)
    end
end
