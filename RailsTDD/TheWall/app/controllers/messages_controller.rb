class MessagesController < ApplicationController
    def index
        @user = User.find(params[:id])
        @messages = Message.where(user: @user).order(created_at: :desc)
        render "messages/index.html.erb"
    end

    def create
        @user = User.find(params[:id])
        message = Message.create(content: params[:content], user: @user)
        if message.valid?
            flash[:messages] = ["Your post was successfully added!"]
        else
            flash[:messages] = message.errors.full_messages
        end
        redirect_to "/user/#{@user.id}/messages"
    end
end
