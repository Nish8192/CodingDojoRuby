class UsersController < ApplicationController
    def index
        if session[:count] == nil
            session[:count] = 0
        end
        render 'users/index.html.erb'
    end

    def result
        @user = User.last
        flash[:submitCount] = "You have submitted #{session[:count]} times!!"
        render 'users/result.html.erb'
    end

    def create
        if session[:count] == nil
            session[:count] = 1
        else
            session[:count] += 1
        end
        User.create(name:params[:name], location:params[:location], lang:params[:lang], comment:params[:comment])
        redirect_to '/result'
    end

end
