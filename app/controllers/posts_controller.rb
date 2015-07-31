class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at desc').limit(10)
  end

  def create
    @post = Post.new(params.require(:post).permit(:name, :email, :comment))
    if @post.save
      redirect_to posts_path, notice: 'post was saved'
    else
      render :new 
    end
  end

  def new
    @post = Post.new
  end

  def get_more
    @posts = Post.all.order('created_at desc').offset(10)
    render :json => @posts
  end

end
