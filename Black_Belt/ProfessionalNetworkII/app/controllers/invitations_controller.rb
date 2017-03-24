class InvitationsController < ApplicationController
    def create
        Invitation.create(user_id: params[:id], sender_id: current_user.id)
        redirect_to "/users"
    end
end
