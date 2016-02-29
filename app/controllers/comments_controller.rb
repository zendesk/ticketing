class CommentsController < ApplicationController
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.create(comment_params.merge(author_id: current_user.id))
    if @comment
      redirect_to @ticket if
      Rails.logger.info "Comment Created: #{@comment.inspect}"
    else
      Rails.logger.info "Oh!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :internal, :ticket_id)
  end
end
