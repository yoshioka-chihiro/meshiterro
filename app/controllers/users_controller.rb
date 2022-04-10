class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post1_images
  end

  def edit
  end
end
