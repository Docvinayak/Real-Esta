class ViewingsController < ApplicationController
  before_action :set_viewing, only: %i[ show edit update destroy ]

  # GET /viewings or /viewings.json
  def index
    @viewings = Viewing.all
  end

  # GET /viewings/1 or /viewings/1.json
  def show
  end

  # GET /viewings/new
  def new
    @viewing = Viewing.new
  end

  # GET /viewings/1/edit
  def edit
  end

  # POST /viewings or /viewings.json
  def create
    @viewing = Viewing.new(viewing_params)

    respond_to do |format|
      if @viewing.save
        format.html { redirect_to viewing_url(@viewing), notice: "Viewing was successfully created." }
        format.json { render :show, status: :created, location: @viewing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @viewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewings/1 or /viewings/1.json
  def update
    respond_to do |format|
      if @viewing.update(viewing_params)
        format.html { redirect_to viewing_url(@viewing), notice: "Viewing was successfully updated." }
        format.json { render :show, status: :ok, location: @viewing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @viewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewings/1 or /viewings/1.json
  def destroy
    @viewing.destroy

    respond_to do |format|
      format.html { redirect_to viewings_url, notice: "Viewing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewing
      @viewing = Viewing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def viewing_params
      params.require(:viewing).permit(:user_id, :property_id, :date)
    end
end
