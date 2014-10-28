class CommentsController < ApplicationController
  
   def create
     @post = Post.find(params[:post_id])

     if @post.comments.create(comment_params)
       redirect_to @post,
                    notice: 'Comment was successfully created.'
      else
        redirect_to @post,
                    alert: 'Error creating comment.'
        puts @post.errors
      end
    end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comments = @post.comments.find(params[:id])
    @comments.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Comment was successfully destroyed.' }
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:author, :body, :email)
  end
  
end
