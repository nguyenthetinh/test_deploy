class MessagesController < ApplicationController
  def create
    @message = Message.new message_params
    @message.save
    redirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
end
