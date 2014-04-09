class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice]
      if @comment.link != nil
        redirect_to link_path(@comment.link)
      elsif @comment.comment.link !=
        redirect_to link_path(@comment.comment.link)
      else
        redirect_to root_path
      end
    end
  end

  private

  params.require(:comment).permit(:content, :user_name, :commentable_id, :commentable_type)
end
