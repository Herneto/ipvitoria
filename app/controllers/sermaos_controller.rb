class SermaosController < ApplicationController
  before_action :set_sermao, only: [:show, :edit, :update, :destroy]

  # GET /sermaos
  # GET /sermaos.json
  def index
    @sermaos = Sermao.order('created_at DESC').limit(3)
  end

  # GET /sermaos/1
  # GET /sermaos/1.json
  def show
  end

  # GET /sermaos/new
  def new
    @sermao = Sermao.new
  end

  # GET /sermaos/1/edit
  def edit
  end

  # POST /sermaos
  # POST /sermaos.json
  def create
    @sermao = Sermao.new(sermao_params)

    respond_to do |format|
      if @sermao.save
        format.html { redirect_to @sermao, notice: 'Sermao was successfully created.' }
        format.json { render :show, status: :created, location: @sermao }
      else
        format.html { render :new }
        format.json { render json: @sermao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sermaos/1
  # PATCH/PUT /sermaos/1.json
  def update
    respond_to do |format|
      if @sermao.update(sermao_params)
        format.html { redirect_to @sermao, notice: 'Sermao was successfully updated.' }
        format.json { render :show, status: :ok, location: @sermao }
      else
        format.html { render :edit }
        format.json { render json: @sermao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sermaos/1
  # DELETE /sermaos/1.json
  def destroy
    @sermao.destroy
    respond_to do |format|
      format.html { redirect_to sermaos_url, notice: 'Sermao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sermao
      @sermao = Sermao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sermao_params
      params.require(:sermao).permit(:titulo, :pregador, :local, :descricao)
    end
end
