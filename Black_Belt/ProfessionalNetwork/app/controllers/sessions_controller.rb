class SessionsController < ApplicationController
    def new
        session[:user_id] = nil
        render "sessions/new.html.erb"
    end

    def create
        if user = User.find_by(email: params[:email])
            if user.authenticate(params[:password])
                session[:user_id] = user.id
                flash[:errors] = ["Successfully Logged In"]
                redirect_to "/users/professional_profile"
            else
                flash[:errors] = ["Incorrect Password!"]
                redirect_to "/"
            end
        else
            flash[:errors] = ["This email is not registered! Please create an account!!"]
            redirect_to "/"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:errors] = ["You have been logged out!!"]
        redirect_to "/"
    end
end
