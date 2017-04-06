class CaughtsController < ApplicationController
  before_action :set_caught, only: [:show, :edit, :update, :destroy, :lvl_up]

  # GET /caughts
  # GET /caughts.json
  def index
    @caughts = current_user.caughts
  end

  # GET /caughts/1
  # GET /caughts/1.json
  def show
  end

  # GET /caughts/new
  def new
    @caught = Caught.new
  end

  # GET /caughts/1/edit
  def edit
  end

  # POST /caughts
  # POST /caughts.json
  def create
    @caught = Caught.new(caught_params)

    respond_to do |format|
      if @caught.save
        format.html { redirect_to @caught, notice: 'Caught was successfully created.' }
        format.json { render :show, status: :created, location: @caught }
      else
        format.html { render :new }
        format.json { render json: @caught.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caughts/1
  # PATCH/PUT /caughts/1.json
  def update
    respond_to do |format|
      if @caught.update(caught_params)
        format.html { redirect_to user_caughts_path(params[:user_id]), notice: 'Caught was successfully updated.' }
        format.json { render :show, status: :ok, location: @caught }
      else
        format.html { render :edit }
        format.json { render json: @caught.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caughts/1
  # DELETE /caughts/1.json
  def destroy
    @caught.destroy
    respond_to do |format|
      format.html { redirect_to user_caughts_path(params[:user_id]), notice: 'Caught was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def lvl_up
    @caught.level+=1
    @caught.save
    redirect_to user_caughts_path(params[:user_id]), notice: 'Level was successfully updated.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caught
      @caught = Caught.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caught_params
      params.require(:caught).permit(:level, :pokemon_id)
    end
end