class Post1ImagesController < ApplicationController
  def new
    @post_image = Post1Image.new
  end

  def create
    @post_image = Post1Image.new
    # 保存するカラムの中身を操作し、ログイン中のユーザーのidを取得している
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post1_images_path
  end

  def index
    @post_images = Post1Image.all
  end

  def show
    @post_image = Post1Image.find(params[:id])
    @post_image.user_id = current_user.id
  end

  def destroy
    @post_image = Post1Image.find(params[:id])
    @post_image.destroy
    redirect_to post1_images_path
  end

   # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post1_image).permit(:shop_name, :image, :caption)
  end

end
