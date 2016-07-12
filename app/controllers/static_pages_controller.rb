class StaticPagesController < ApplicationController
  def index
    @message = Message.new
  end
end
