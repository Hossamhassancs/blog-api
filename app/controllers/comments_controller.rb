class CommentsController < ApplicationController
  before_action :set_comment
  before_action :set_comment_comment, only: [:show, :update, :destroy]

  # GET /posts/:post_id/comments
  def index
    json_response(@post.comments)
  end

  # GET /posts/:post_id/comments/:id
  def show
    json_response(@comment)
  end

  # POST /posts/:post_id/comments
  def create
    @post.comments.create!(comment_params)
    json_response(@post, :created)
  end

  # PUT /posts/:post_id/comments/:id
  def update
    @comment.update(comment_params)
    head :no_content
  end

  # DELETE /posts/:post_id/comments/:id
  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.permit(:name, :body)
  end

  def set_comment
    @post = Post.find(params[:post_id])
  end

  def set_comment_comment
    @comment = @post.comments.find_by!(id: params[:id]) if @post
  end

end
