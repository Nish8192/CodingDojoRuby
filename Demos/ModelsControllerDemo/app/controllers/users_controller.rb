class UsersController < ApplicationController

    def index
        @users = User.all
        @user = User.first
        render 'users/index.html.erb'
    end

    def new
        @user = User.first
        render 'users/new.html.erb'
    end

    def create
        User.create(first: params[:first], last: params[:last])
        redirect_to "/"
    end

    def show
        @user = User.find(params[:id])
        # render 'users/show.html.erb'
    end
end
