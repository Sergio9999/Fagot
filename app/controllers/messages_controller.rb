class MessagesController < ApplicationController
  def create
    name = params[:name]
    phone = params[:phone]
    comment = params[:comment]
    InviterMailer.callback_information(name, phone, comment).deliver_now
    redirect_to root_path
  end
end
