class SessionsController < ApplicationController
  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url
    else
      flash.now.alert = "Email or password was invalid. Please try again."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end