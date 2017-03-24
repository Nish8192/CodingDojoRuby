class UsersController < ApplicationController

    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], description: params[:description])
        if user.valid?
            session[:user_id] = user.id
            flash[:errors] = ["New User Created Succesfully!"]
            redirect_to "/users/professional_profile"
        else
            flash[:errors] = user.errors.full_messages
            redirect_to "/"
        end
    end

    def professional_profile
        @users = Network.where(user: current_user)
        @invitations = Invitation.where(user: current_user)
        render "users/professional_profile.html.erb"
    end

    def show
        @networks = Network.find_by(user: current_user)
        @invitations = Invitation.find_by(user: current_user)
        @users = User.all
        render "users/show.html.erb"
    end

end
