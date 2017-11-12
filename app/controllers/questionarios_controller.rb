class QuestionariosController < ApplicationController
  before_action :authenticate_admin!, only: [:new,:edit,:update, :destroy]
  before_action :set_questionario, only: [:show, :edit, :update, :destroy]

  # GET /questionarios
  # GET /questionarios.json
  def index
    @questionarios = Questionario.all
  end

  # GET /questionarios/1
  # GET /questionarios/1.json
  def show
    @sessoes = Sessao.where(questionario_id: @questionario).order('sigla')
    @topicos = Topico.where(sessao_id: @sessoes).order('sigla')
    @marcos = Marco.where(topico_id: @topicos).order('sigla')
  end

  # GET /questionarios/new
  def new
    @questionario = Questionario.new
  end

  # GET /questionarios/1/edit
  def edit
  end

  # POST /questionarios
  # POST /questionarios.json
  def create
    @questionario = Questionario.new(questionario_params)

    respond_to do |format|
      if @questionario.save
        format.html { redirect_to @questionario, notice: 'Questionario was successfully created.' }
        format.json { render :show, status: :created, location: @questionario }
      else
        format.html { render :new }
        format.json { render json: @questionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionarios/1
  # PATCH/PUT /questionarios/1.json
  def update
    respond_to do |format|
      if @questionario.update(questionario_params)
        format.html { redirect_to @questionario, notice: 'Questionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionario }
      else
        format.html { render :edit }
        format.json { render json: @questionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionarios/1
  # DELETE /questionarios/1.json
  def destroy
    @questionario.destroy
    respond_to do |format|
      format.html { redirect_to questionarios_url, notice: 'Questionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionario
      @questionario = Questionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionario_params
      params.require(:questionario).permit(:id,:titulo)
    end
end
