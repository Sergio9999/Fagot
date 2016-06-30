class InvitersController < ApplicationController
  def create
    @name = params[:name]
    @phone = params[:phone]
    @comentary = params[:comentary]
  end
end
