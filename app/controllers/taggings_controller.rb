class TaggingsController < ApplicationController
  before_action :set_tagging, only: [:show, :update, :destroy]
  before_action :set_post, only: [:show, :update, :destroy, :create]

  # GET /taggings
  def index
    @taggings = current_user.@post.Tagging.all

    render json: @taggings
  end

  # GET /taggings/1
  def show
    render json: @tagging
  end

  # POST /taggings
  def create
    @tagging = current_user.@post.taggings.new(tagging_params)

    if @tagging.save
      render json: @tagging, status: :created, location: @tagging
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taggings/1
  def update
    if @tagging.update(tagging_params)
      render json: @tagging
    else
      render json: @tagging.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taggings/1
  def destroy
    @tagging.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:post_id])
    end
    def set_tagging
      @tagging = Tagging.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tagging_params
      params.require(:tagging).permit(:tag_id, :post_id)
    end
end
