class UsersController < ApplicationController
    def index
        render "users/index.html.erb"
    end

    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.valid?
            flash[:errors] = ["User Created Successfully!"]
            redirect_to "users/#{user.id}"
        else
            flash[:errors] = user.errors.full_messages
        end
        redirect_to "/"
    end

    def show
        render "users/show.html.erb"
    end
end
