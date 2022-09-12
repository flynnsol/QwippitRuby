class QwippsController < ApplicationController
  before_action :set_qwipp, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /qwipps or /qwipps.json
  def index
    @qwipps = Qwipp.all.order("created_at DESC")
    @qwipp = Qwipp.new
  end

  # GET /qwipps/1 or /qwipps/1.json
  def show
  end

  # GET /qwipps/new
  def new
    @qwipp = current_user.qwipps.build
  end

  # GET /qwipps/1/edit
  def edit
  end

  # POST /qwipps or /qwipps.json
  def create
    @qwipp = current_user.qwipps.build(qwipp_params)

    respond_to do |format|
      if @qwipp.save
        format.html { redirect_to root_path, notice: "Qwipp was successfully created." }
        format.json { render :show, status: :created, location: @qwipp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qwipp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qwipps/1 or /qwipps/1.json
  def update
    respond_to do |format|
      if @qwipp.update(qwipp_params)
        format.html { redirect_to qwipp_url(@qwipp), notice: "Qwipp was successfully updated." }
        format.json { render :show, status: :ok, location: @qwipp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qwipp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qwipps/1 or /qwipps/1.json
  def destroy
    @qwipp.destroy

    respond_to do |format|
      format.html { redirect_to qwipps_url, notice: "Qwipp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qwipp
      @qwipp = Qwipp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qwipp_params
      params.require(:qwipp).permit(:qwipp)
    end
end
