class Api::V1::MessagesController < Api::V1::BaseController
  def index
    @user = current_user
    @messages = Message.where(author_id: current_user)
  end

  # def create
  #   @message = Message.new(params[:text])
  #   @message.recipient = User.find_by(email: params[:recipient])
  #   @message.author = current_user
  #   if @message.save!
  #     # render :show, status: :created
  #     p 'yay'
  #   else
  #     # render_error
  #   end
  # end

  private

  # def message_params
    # params.require(:message).permit(:text, :recipient)
  # end
end
