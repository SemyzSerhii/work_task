class PostsController < ApplicationController

  def index
    @posts = Post.all
  end


  def new
    @post = Post.new
  end

  def create
    @post = Post.create(posts_params)
    if @post.save
      redirect_to({ action: :index })
    else
      render :new
    end
  end

  def update
    @post = Post.update(posts_params)
  end

  def show; end

  def edit; end

  def destroy
    @post.destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :body)
  end
end