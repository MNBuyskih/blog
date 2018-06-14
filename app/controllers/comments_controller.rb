class CommentsController < ApplicationController
  def create
    comment = Comment.new(params[:comment])
    comment.post_id = params[:post_id]

    if comment.save
      redirect_to comment.post
    else
      redirect_to :back
    end
  end
end
