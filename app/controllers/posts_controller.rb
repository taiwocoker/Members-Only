class PostsController < ApplicationController
  before_action :authenticate_member!, except: [:index]

  include PostsHelper

  def index
    @posts = Post.all
  end

  def show
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = current_member.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
end
