class PostsController < ApplicationController
  def index
    @posts = Post.all.order('id desc').limit(10)
  end

  def create
    @post = Post.new(params.require(:post).permit(:name, :email, :comment))
    if @post.save
      redirect_to @post, notice: 'post was saved'
    else
      render new
    end
  end

  def new
    @post = Post.new
  end

  def get_more
    @posts = Post.all.order('id desc').offset(10)
    render :json => @posts
  end

end
