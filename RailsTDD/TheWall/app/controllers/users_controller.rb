class UsersController < ApplicationController
    def index
        if flash[:messages] == nil
            flash[:messages] = ""
        end
        render "users/index.html.erb"
    end

    def create
        user = User.find_by(name: params[:name])
        if user == nil
            user = User.create(name: params[:name])
            if user.valid?
                redirect_to "/user/#{user.id}/messages"
            else
                flash[:messages] = user.errors.full_messages
                redirect_to "/"
            end
        else
            redirect_to "/user/#{user.id}/messages"
        end
    end
end
