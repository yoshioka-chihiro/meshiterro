class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post1_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to edit_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
