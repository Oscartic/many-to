class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:id)
  end

  def new
    @post = Post.new
  end

  def create
    binding.pry
    @post = Post.new(post_params[:post])
    if params[:category_ids]
      @post.categories << params[:category_ids]
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :status, :category_ids, :content)
  end
end

