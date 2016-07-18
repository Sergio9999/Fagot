class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      InviterMailer.callback_information(@message).deliver_now
      redirect_to root_path, notice: 'Спасибо! Мы Вам скоро перезвоним'
    else
      render 'static_pages/index'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :phone, :comment)
  end
end
