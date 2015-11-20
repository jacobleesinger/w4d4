class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    # Switch branches
    if user.nil?
      flash.now[:errors] = ["you are dumb"]
      render :new
    else
      log_in_user!(user)
      redirect_to user_url(user.id)
    end
  end


  def log_in
    session[:session_token] = user.reset_session_token!
  end

  def destroy
    log_out_user!(current_user)
    render :new
  end
end
