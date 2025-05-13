class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(allowed_user_params)

    if @user.save
      redirect_to new_post_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def allowed_user_params
    params.expect(post: [ :content, :user_id ])
  end
end
