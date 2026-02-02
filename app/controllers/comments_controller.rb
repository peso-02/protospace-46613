class CommentsController < ApplicationController
  # ===== アクション =====
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      render "prototypes/show", status: :unprocessable_entity
    end
  end

  private
   # ===== 裏方メソッド =====
  
   def comment_params
     params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
   end
end
