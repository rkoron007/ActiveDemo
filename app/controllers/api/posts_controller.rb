class Api::PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        debugger
        if @post.save
            render json: {message:'You did it!!'}
        else
            render json: @post.errors.full_messages

        end
    end

    def post_params
        params.require(:post).permit(:title, :photo)
    end
end
