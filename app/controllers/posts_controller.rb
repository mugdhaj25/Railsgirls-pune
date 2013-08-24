class PostsController < ApplicationController
def new
end

def index
	@posts=Post.all
end

def create
    post = params[:post]
    @post = Post.new(post.permit(:title,:text))
    @post.save
    redirect_to @post  
end

def show
@post=Post.find(params[:id])
	
end
def edit
@post=Post.find(params[:id])
redirect_to @Post, :notice
end
end


