class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order(created_at: :desc)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1
  def show
  end

  # GET /posts/1/edit
  def edit
    unless can? :update, @post
      respond_to do |format|
        format.html { redirect_to posts_path, alert: 'You are not allowed to edit this post' }
      end
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    unless can? :update, @post
      respond_to do |format|
        format.html { redirect_to posts_path, alert: 'You are not allowed to update this post.' }
      end
    else
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    unless can? :destroy, @post
      respond_to do |format|
        format.html { redirect_to posts_url, alert: 'You are not allowed to delete this post.' }
      end
    else
      @post.destroy
      respond_to do |format|
        format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:author, :title, :body, :tag_list)
  end
end
