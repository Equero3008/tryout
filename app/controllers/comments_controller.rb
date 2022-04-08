class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(comment_params)

        if @comment.save 
            flash.notice = "Comment saved"
            redirect_to post_path(@post)
        else
            flash.notice = "Comment not saved"
            redirect_to post_path(@post)
        end
    end

    
    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        if @comment.destroy
            flash.notice = "comment deleted"
            redirect_to post_path(@post)
        else
            flash.notice = "comment not deleted"
            redirect_to post_path(@post)
        end
    end

    def comment_params
        params.require(:comment).permit(
            :text,
            :email
        )
    end
end

