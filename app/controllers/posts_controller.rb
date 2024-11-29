# class PostsController < ApplicationController
#   # Run the `set_post` method before specific actions (show, edit, update, destroy)
#   before_action :set_post, only: %i[show edit update destroy]
#   # Include helper methods from the PostsHelper module
#   include PostsHelper

#   # GET /posts
#   # GET /posts.json
#   # Display a list of all posts
#   def index
#     @posts = Post.all
#   end

#   # GET /posts/1
#   # GET /posts/1.json
#   # Display a single post
#   def show; end

#   # GET /posts/new
#   # Render the form for creating a new post
#   def new
#     @post = Post.new
#   end

#   # GET /posts/1/edit
#   # Render the form for editing an existing post
#   def edit; end

#   # POST /posts
#   # POST /posts.json
#   # Handle the creation of a new post
#   def create
#     # Initialize a new post with the submitted parameters
#     @post = Post.new(post_params)
#     # Assign the current user as the post creator using a helper method
#     @post = assign_post_creator(@post, current_user)
#     
#     # Respond with appropriate formats (HTML or JSON)
#     respond_to do |format|
#       if @post.save
#         # Redirect to the post if saved successfully
#         format.html { redirect_to @post, notice: 'Post was successfully created.' }
#         format.json { render :show, status: :created, location: @post }
#       else
#         # Render the form again if there are validation errors
#         format.html { render :new }
#         format.json { render json: @post.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /posts/1
#   # PATCH/PUT /posts/1.json
#   # Handle updating an existing post
#   def update
#     # Respond with appropriate formats (HTML or JSON)
#     respond_to do |format|
#       if @post.update(post_params)
#         # Redirect to the updated post if saved successfully
#         format.html { redirect_to @post, notice: 'Post was successfully updated.' }
#         format.json { render :show, status: :ok, location: @post }
#       else
#         # Render the form again if there are validation errors
#         format.html { render :edit }
#         format.json { render json: @post.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /posts/1
#   # DELETE /posts/1.json
#   # Handle deleting a post
#   def destroy
#     # Delete the post and respond with appropriate formats
#     @post.destroy
#     respond_to do |format|
#       format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private

#   # Use callbacks to share common setup or constraints between actions.
#   # Find the post based on the ID parameter
#   def set_post
#     @post = Post.find(params[:id])
#   end

#   # Only allow a list of trusted parameters through.
#   # Permit only title and body parameters for a post
#   def post_params
#     params.require(:post).permit(:title, :body)
#   end
# end
