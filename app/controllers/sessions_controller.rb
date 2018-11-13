class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      render plain: "super lo lograste"
    else
      render plain: "no lo lograste"
    end
  end

end
