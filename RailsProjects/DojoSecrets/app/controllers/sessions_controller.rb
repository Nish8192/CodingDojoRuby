class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          flash[:errors] = ["Succesfully Logged In!"]
          redirect_to "/users/#{session[:user_id]}"
      elsif user
          flash[:errors] = ["Sorry, that's an invalid password :("]
          redirect_to "/"
      else
          flash[:errors] = ["That email address doesn't exist. Please register"]
          redirect_to "/"
      end

  end

  def destroy
      session[:user_id] = nil
      flash[:errors] = ["You have been successfully logged out!!"]
      redirect_to "/"
  end
end
