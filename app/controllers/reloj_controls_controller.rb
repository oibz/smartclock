class RelojControlsController < ApplicationController
  before_action :set_reloj_control, only: %i[ show edit update destroy ]

  # GET /reloj_controls or /reloj_controls.json
  def index
    @reloj_controls = RelojControl.all
  end

  # GET /reloj_controls/1 or /reloj_controls/1.json
  def show
  end

  # GET /reloj_controls/new
  def new
    @reloj_control = RelojControl.new
  end

  # GET /reloj_controls/1/edit
  def edit
  end

  # POST /reloj_controls or /reloj_controls.json
  def create
    @reloj_control = RelojControl.new(reloj_control_params)

    respond_to do |format|
      if @reloj_control.save
        format.html { redirect_to reloj_control_url(@reloj_control), notice: "El Reloj fue creado correctamente." }
        format.json { render :show, status: :created, location: @reloj_control }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reloj_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reloj_controls/1 or /reloj_controls/1.json
  def update
    respond_to do |format|
      if @reloj_control.update(reloj_control_params)
        format.html { redirect_to reloj_control_url(@reloj_control), notice: "El Reloj fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @reloj_control }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reloj_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reloj_controls/1 or /reloj_controls/1.json
  def destroy
    @reloj_control.destroy

    respond_to do |format|
      format.html { redirect_to reloj_controls_url, notice: "El Reloj fue elimiado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reloj_control
      @reloj_control = RelojControl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reloj_control_params
      params.require(:reloj_control).permit(:marca, :modelo, :color, :caracteristicas, :image)
    end
end
