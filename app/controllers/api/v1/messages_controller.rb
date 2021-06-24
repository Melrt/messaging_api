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

  def replace_by_confidential
    text_message = params[:text]
    # text_message.gsub(regex match by 'confidential')
    # model or controller ? before create ? before save ?
  end

  private

  # def message_params
    # params.require(:message).permit(:text, :recipient)
  # end
end
