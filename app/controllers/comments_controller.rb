class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.create(comment_params.merge(author_id: current_user.id))
    if @comment && @comment.ticket.update_attribute(:status_id, ticket_params[:status_id])
      redirect_to @ticket if
      Rails.logger.info "Comment Created: #{@comment.inspect}"
    else
      Rails.logger.info "Oh!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :internal, :ticket_id, :status_id)
  end

  def ticket_params
    params.require(:ticket).permit(:status_id)
  end
end
