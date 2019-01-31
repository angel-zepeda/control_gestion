class PensionersController < ApplicationController
  before_action :set_pensioner, only: [:show, :edit, :update, :destroy]

  # GET /pensioners
  # GET /pensioners.json
  def index
    @pensioners = Pensioner.all.paginate(page: params[:page], per_page: 10).order("created_at DESC")
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def integrador
  end
  # GET /pensioners/1
  # GET /pensioners/1.json
  def show
  end

  # GET /pensioners/new
  def new
    @pensioner = Pensioner.new
  end

  # GET /pensioners/1/edit
  def edit
  end

  # POST /pensioners
  # POST /pensioners.json
  def create
    @pensioner = Pensioner.new(pensioner_params)

    respond_to do |format|
      if @pensioner.save
        format.html { redirect_to @pensioner, notice: 'Pensioner was successfully created.' }
        format.json { render :show, status: :created, location: @pensioner }
      else
        format.html { render :new }
        format.json { render json: @pensioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pensioners/1
  # PATCH/PUT /pensioners/1.json
  def update
    respond_to do |format|
      if @pensioner.update(pensioner_params)
        if current_user.role == 'secretaria'
          format.html { redirect_to pensioners_path, notice: 'Pensioner was successfully updated.' }
          format.json { render :show, status: :ok, location: @pensioner }
        end
        if current_user.role == 'integrador' or current_user.role == 'coordinador'
          format.html { redirect_to @pensioner, notice: 'Pensioner was successfully updated.' }
          format.json { render :show, status: :ok, location: @pensioner }
        end
      else
        format.html { render :edit }
        format.json { render json: @pensioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pensioners/1
  # DELETE /pensioners/1.json
  def destroy
    @pensioner.destroy
    respond_to do |format|
      format.html { redirect_to pensioners_url, notice: 'Pensioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pensioner
    @pensioner = Pensioner.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pensioner_params
    params.require(:pensioner).permit(:turno, :numero_oficio, :fecha_oficio, :fecha_recepcion, :promovente, :numero_juicio, :turnado, :anexo1, :numero_correspondencia,
                                      :numero_pension, :tipo_expediente,
                                      :numero_expediente, :estatus_expediente,
                                      :observaciones, :clasificacion,
                                      :letra, :termino, :envio_juridico,
                                      :monto_cheque, :ajuste_cuota, :sala,
                                      :que_se_liquida, :fecha_liquidacion,
                                      :autoridad_cumplimiento, :materia,
                                      :fecha_uj, :numero_sp, :fecha_sp, :numero_uj,
                                      :fecha_sentencia, :integrador,
                                      :liquidador, :estado_final,
                                      :anexo2, :anexo3, :anexo4,
                                      :anexo5, :anexo6, :anexo7, :anexo8, :anexo9,
                                      :anexo10, :anexo11, :anexo12)
  end
end
