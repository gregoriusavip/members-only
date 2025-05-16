class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(user_id: current_user.id, content: params[:content])

    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
