class UsersController < ApplicationController
    def index
        render "users/index.html.erb"
    end

    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.valid?
            flash[:errors] = ["User Created Successfully!"]
            session[:user_id] = user.id
            redirect_to "users/#{user.id}"
        else
            flash[:errors] = user.errors.full_messages
            redirect_to "/"
        end

    end

    def show
        @secrets = Secret.where(user: current_user)

        @liked = Like.includes(:secret).where(user: current_user)
        render "users/show.html.erb"
    end
end
