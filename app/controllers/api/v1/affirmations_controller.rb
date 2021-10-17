class Api::V1::AffirmationsController < ApplicationController
  

    def index
        affirmations = Affirmation.all
        render json: AffirmationSerializer.new(affirmations)
    end

    def new 
        affirmation = Affirmation.new
    end

    def create
        affirmation = Affirmation.create(affirmation_params)
        if affirmation.save!
            render json: AffirmationSerializer.new(affirmation)
        else
            render json: {errors: affirmation.errors.full_messages}
        end
    end

    private

    def affirmation_params
        params.require(:affirmation).permit(:name)
    end
end