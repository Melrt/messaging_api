class Api::V1::MessagesController < Api::V1::BaseController
  def index
    @user = current_user
    @messages = Message.where(author_id: current_user)
  end

  def create
    @message = Message.new(message_params)
    @message.author = current_user
    # @message.recipient = User.find_by(email: "seb@lewagon.org")
    if @message.save!
      # render :show, status: :created
      p 'yay'
    else
      # render_error
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :recipient)
  end
end
