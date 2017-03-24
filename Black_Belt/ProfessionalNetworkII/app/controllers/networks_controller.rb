class NetworksController < ApplicationController
    def create
        Network.create(user_id: current_user.id, friend_id: params[:sender_id])
        invite = Invitation.find(params[:invite_id])
        invite.destroy
        redirect_to "/users/professional_profile"
    end
end
