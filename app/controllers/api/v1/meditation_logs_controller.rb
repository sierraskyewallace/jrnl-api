class Api::V1::MeditationLogsController < ApplicationController


  def index
    meditation_logs = MeditationLog.all
    render json: MeditationLogSerializer.new(meditation_logs)
  end

  def new 
    meditation_log = MeditationLog.new
  end

  def create 
    meditation_log = MeditationLog.create(meditation_log_params)
    if meditation_log.save! 
      render json: MeditationLogSerializer.new(meditation_log)
    else
      render json: {errors: meditation_log.errors.full_messages}
    end
  end

  private

  def meditation_log_params
    params.require(:meditation_log).permit(:name, :description, :duration)
  end
end