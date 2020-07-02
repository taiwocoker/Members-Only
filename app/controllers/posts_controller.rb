class PostsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]
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
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save 
      redirect_to posts_path
    else
      render :new
    end
  end
end
