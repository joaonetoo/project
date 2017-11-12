class MarcosController < ApplicationController
  before_action :set_marco, only: [:show, :edit, :update, :destroy]

  # GET /marcos
  # GET /marcos.json
  def index
    @marcos = Marco.all
  end

  # GET /marcos/1
  # GET /marcos/1.json
  def show
  end

  # GET /marcos/new
  def new
    @topicos = Topico.all
    @marco = Marco.new
  end

  # GET /marcos/1/edit
  def edit
    @topicos = Topico.all

  end

  # POST /marcos
  # POST /marcos.json
  def create
    @marco = Marco.new(marco_params)

    respond_to do |format|
      if @marco.save
        format.html { redirect_to @marco, notice: 'Marco was successfully created.' }
        format.json { render :show, status: :created, location: @marco }
      else
        format.html { render :new }
        format.json { render json: @marco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcos/1
  # PATCH/PUT /marcos/1.json
  def update
    respond_to do |format|
      if @marco.update(marco_params)
        format.html { redirect_to @marco, notice: 'Marco was successfully updated.' }
        format.json { render :show, status: :ok, location: @marco }
      else
        format.html { render :edit }
        format.json { render json: @marco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcos/1
  # DELETE /marcos/1.json
  def destroy
    @marco.destroy
    respond_to do |format|
      format.html { redirect_to marcos_url, notice: 'Marco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marco
      @marco = Marco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marco_params
      params.require(:marco).permit(:topico_id, :sigla, :descricao)
    end
end
