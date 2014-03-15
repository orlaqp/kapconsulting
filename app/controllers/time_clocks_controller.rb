class TimeClocksController < ApplicationController
  
  # GET /time_clocks
  # GET /time_clocks.json
  def index
    @last_clock_in = TimeClock.get_last_clock_in current_user.id
    @time_clocks = TimeClock.where("user_id = ?", current_user.id).order('start_time desc')
  end

  # GET /time_clocks/1
  # GET /time_clocks/1.json
  def show
  end

  # GET /time_clocks/new
  def new
    
    @last_clock_in = TimeClock.get_last_clock_in current_user.id
    if !@last_clock_in.blank?
      flash[:error] = "Check in is not possible at this time. Please close the previous session first."      
    else
      @time_clock = TimeClock.create(:user_id => current_user.id, :start_time => Time.now)
    end

    redirect_to action: :index
  end

  # GET /time_clocks/1/edit
  def update
    @last_clock_in = TimeClock.get_last_clock_in current_user.id
    if @last_clock_in.blank?
      flash[:error] = "Check out is not possible at this time. Please open a session first."      
    else
      @last_clock_in.end_time = Time.now
      @last_clock_in.comments = params[:time_clock][:comments]
      if !@last_clock_in.save
        flash[:error] = @last_clock_in.errors.empty? ? "An unknown error happend. Please contact support" : @last_clock_in.errors.full_messages.to_sentence
      end
    end
    redirect_to action: :index
  end

 
end
