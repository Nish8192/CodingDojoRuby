class SessionsController < ApplicationController
    def new
        reset_session
        render "sessions/new.html.erb"
    end

    def create
        if user = User.find_by(email: params[:email])
            if user.authenticate(params[:password])
                session[:user_id] = user.id
                flash[:errors] = ["Successfully Logged In!"]
                redirect_to "/events"
            else
                flash[:errors] = ["Incorrect password!"]
                redirect_to "/"
            end
        else
            flash[:errors] = ["This email address does not have an account. Please create a new account!"]
            redirect_to "/"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:errors] = ["You have been logged out!"]
        redirect_to "/"
    end
end
