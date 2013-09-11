class CommentsController < ApplicationController
  respond_to :json

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments

    respond_to do |format|
      format.html
      format.json { render json: @comments.all }
    end
  end

  def create
    respond_with Comment.create(params[:post])
  end
end

