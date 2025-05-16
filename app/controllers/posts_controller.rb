class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(allowed_user_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def allowed_user_params
    params.expect(post: [ :content ])
  end
end
