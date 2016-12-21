class CommentsController < ApplicationController

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  private

    def comment_params
      return params.require(:comment).permit(:commentator, :body)
    end

end
