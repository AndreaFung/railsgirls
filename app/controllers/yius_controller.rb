class YiusController < ApplicationController
  before_action :set_yiu, only: [:show, :edit, :update, :destroy]

  # GET /yius
  # GET /yius.json
  def index
    @yius = Yiu.all
  end

  # GET /yius/1
  # GET /yius/1.json
  def show
  end

  # GET /yius/new
  def new
    @yiu = Yiu.new
  end

  # GET /yius/1/edit
  def edit
  end

  # POST /yius
  # POST /yius.json
  def create
    @yiu = Yiu.new(yiu_params)

    respond_to do |format|
      if @yiu.save
        format.html { redirect_to @yiu, notice: 'Yiu was successfully created.' }
        format.json { render :show, status: :created, location: @yiu }
      else
        format.html { render :new }
        format.json { render json: @yiu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yius/1
  # PATCH/PUT /yius/1.json
  def update
    respond_to do |format|
      if @yiu.update(yiu_params)
        format.html { redirect_to @yiu, notice: 'Yiu was successfully updated.' }
        format.json { render :show, status: :ok, location: @yiu }
      else
        format.html { render :edit }
        format.json { render json: @yiu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yius/1
  # DELETE /yius/1.json
  def destroy
    @yiu.destroy
    respond_to do |format|
      format.html { redirect_to yius_url, notice: 'Yiu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yiu
      @yiu = Yiu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yiu_params
      params.require(:yiu).permit(:name, :description, :picture)
    end
end
