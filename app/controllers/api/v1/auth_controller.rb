class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: AuthSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: AuthSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:auth).permit(:username, :password)
  end
end
