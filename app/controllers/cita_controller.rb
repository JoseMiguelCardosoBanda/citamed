class CitaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cita, only: %i[ show edit update destroy ]

  # GET /cita or /cita.json
  def index
    @cita = Cita.all
  end

  # GET /cita/1 or /cita/1.json
  def show
  end

  # GET /cita/new
  def new
    @cita = Cita.new
  end

  # GET /cita/1/edit
  def edit
  end

  # POST /cita or /cita.json
  def create
    @cita = Cita.new(cita_params)

    respond_to do |format|
      if @cita.save
        format.html { redirect_to cita_url(@cita), notice: "Cita creada." }
        format.json { render :show, status: :created, location: @cita }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cita/1 or /cita/1.json
  def update
    respond_to do |format|
      if @cita.update(cita_params)
        format.html { redirect_to cita_url(@cita), notice: "Cita actualizada." }
        format.json { render :show, status: :ok, location: @cita }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cita/1 or /cita/1.json
  def destroy
    @cita.destroy

    respond_to do |format|
      format.html { redirect_to cita_index_url, notice: "Cita eliminada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cita
      @cita = Cita.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cita_params
      params.require(:cita).permit(:id_paciente, :nombre_paciente, :id_doctor, :nombre_doctor, :consultorio, :fecha_hora)
    end
end
