class Api::V1::AffirmationsController < ApplicationController
  

    def index
        @affirmations = Affirmation.all
        render json: @affirmations
    end
end