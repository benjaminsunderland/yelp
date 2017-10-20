class CommentsController < ApplicationController
  def create
    @business = Business.find(params[:business_id])
    @comment = @business.comments.create(comment_params)
    redirect_to business_path(@business)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
