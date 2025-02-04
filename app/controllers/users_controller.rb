class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    @user = User.find(params[:id])
    @user.assign_attributes(user_params)
    binding.pry
    render json: @user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)  # まずはシンプルなパラメータで試す
  end
end
