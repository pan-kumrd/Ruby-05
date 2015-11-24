class CommentsController < ApplicationController

  def create
    comment = Post.find(params[:post_id]).comments.new(comment_params)
    msg = comment.save ? 'Comment saved' : 'Unable to save comment: ' + comment.errors.full_messages.join('. ')
    redirect_to posts_path, notice: msg
  end


  def destroy
    Post.find(params[:post_id]).comments.find(params[:id]).destroy
    redirect_to posts_path, notice: 'Comment deleted'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
