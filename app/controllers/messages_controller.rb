class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user_id = params[:user_id]
    if @message.save
      respond_to do |format|
        user = User.find(params[:user_id])
        format.html { redirect_to user_path(user) }
      end
    else
      format.html { render action: 'new' }
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :user)
    end
end
