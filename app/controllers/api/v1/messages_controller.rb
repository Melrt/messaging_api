class Api::V1::MessagesController < Api::V1::BaseController
  def index
    @messages = Message.where(author_id: current_user)
  end

  def create
    @message = Message.new(message_params)
    # @message.recipient = User.find_by(email: params[:recipient])
    @message.author = current_user
    if @message.save
      render :index, status: :created
    else
      render :create
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :recipient)
  end
end
