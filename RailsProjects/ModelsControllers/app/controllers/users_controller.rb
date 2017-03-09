class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def new_user
        render "users/new.html.erb"
    end

    def show_user
        @user = User.find(params[:id])
        render "users/show.html.erb"
    end

    def edit_user
        @user = User.find(:id)
        render "users/edit.html.erb"
    end

    def save_user
        User.create(name: params[:name])
        redirect_to "/users"
    end

    def users_total
        @count = User.count(:all)
        render text: "There are #{@count} users currently!"
    end
end
