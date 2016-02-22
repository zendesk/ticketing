class CommentsController < ApplicationController

  def create
    @ticket = Ticket.find(params[:ticket_id])
    require 'byebug'; byebug
    redirect_to @ticket if @ticket.comments.create!(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :internal, :ticket_id)
  end
end
