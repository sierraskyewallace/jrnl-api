class Api::V1::MoodsController < ApplicationController
  

    def index 
        moods = Mood.all
        render json: MoodSerializer.new(moods)
    end

    def new 
        mood = Mood.new
    end


    def create
        mood = Mood.create(mood_params)
        if mood.save!
            render json: MoodSerializer.new(mood)
        else
            render json: {error: mood.errors.full_messages}
        end
    end
    

    private

    def mood_params
        params.require(:mood).permit(:name, :description)
    end
end