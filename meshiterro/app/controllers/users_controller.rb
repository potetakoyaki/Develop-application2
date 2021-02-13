class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:id]).reverse_order
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @usr = update(user_params)
    redirect to user_path(@user.id)
  end
  
  private
  def user_params
    params.requier(:user).permit(:name, :profile_image)
  end
end
