class UsersController < ApplicationController

    def create
        user = User.create(name: params[:name], email: params[:new_email], password: params[:new_password], password_confirmation: params[:password_confirmation], description: params[:description])
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
        @users = Network.where(user_id: current_user.id)
        @invitations = Invitation.where(user_id: current_user.id)

        render "users/professional_profile.html.erb"
    end

    def show
        @network = Network.find_by(user: current_user)
        @invitation = Invitation.find_by(user: current_user)
        @users = User.all
        render "users/show.html.erb"
    end

    def view
        @user = User.find(params[:id])
        render "users/view.html.erb"
    end

end
