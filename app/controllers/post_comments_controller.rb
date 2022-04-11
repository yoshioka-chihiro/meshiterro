class PostCommentsController < ApplicationController

  def create
    post_image = Post1Image.find(params[:post1_image_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.post1_image_id = post_image.id
    comment.save
    redirect_to post1_image_path(post_image)
  end

  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to post1_image_path(params[:post1_image_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
