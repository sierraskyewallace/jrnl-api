class Api::V1::MeditationLogsController < ApplicationController


  def index
    @meditation_logs = MeditationLog.all
    render json: @meditation_logs
  end
end