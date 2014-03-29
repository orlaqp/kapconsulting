class TimeSheetController < ApplicationController
  before_action :set_time_clock, only: [:show, :edit, :update, :destroy]

  # GET /time_clock
  # GET /time_clock.json
  def index
    
    @filter = Filter.new params[:filter]
    # @time_clock_entries = TimeClock.all

    # process users filter
    if !@filter.department_id.blank?
      @users = User.where("department_id = ?", @filter.department_id)
    else  
      @users = User.all
    end

    # filter time clock entries
    @time_clock_entries = TimeClock.includes(:user).filter(@filter)
    
  end

  # GET /time_clock/1
  # GET /time_clock/1.json
  def show
  end

  # GET /time_clock/new
  def new    
    @time_clock = TimeClock.new
  end

  # GET /time_clock/1/edit
  def edit
  end

  # POST /time_clock
  # POST /time_clock.json
  def create
    @time_clock = TimeClock.new(time_clock_params)

    respond_to do |format|
      if @time_clock.save
        format.html { redirect_to time_sheet_index_path(@time_clock), notice: 'Time clock entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_clock }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_clock/1
  # PATCH/PUT /time_clock/1.json
  def update
    respond_to do |format|
      if @time_clock.update(time_clock_params)
        format.html { redirect_to time_sheet_index_path(@time_clock), notice: 'Time clock entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_clock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_clock/1
  # DELETE /time_clock/1.json
  def destroy
    @time_clock.destroy
    respond_to do |format|
      format.html { redirect_to time_sheet_index_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_clock
      @time_clock = TimeClock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_clock_params
      params.require(:time_clock).permit(:start_time, :end_time, :comments)
    end
end
