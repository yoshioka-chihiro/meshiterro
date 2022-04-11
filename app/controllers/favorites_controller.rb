class FavoritesController < ApplicationController

  def create
    post_image = Post1Image.find(params[:post1_image_id])
    favorite = current_user.favorites.new(post1_image_id: post_image.id)
    favorite.save
    redirect_to post1_image_path(post_image)
  end

  def destroy
    post_image = Post1Image.find(params[:post1_image_id])
    favorite = current_user.favorites.find_by(post1_image_id: post_image.id)
    favorite.destroy
    redirect_to post1_image_path(post_image)
  end

end
