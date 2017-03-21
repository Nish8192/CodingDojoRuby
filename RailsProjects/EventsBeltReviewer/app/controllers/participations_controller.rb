class ParticipationsController < ApplicationController
    def create
        event = Event.find(params[:id])
        Participation.create(user: current_user, event: event)
        redirect_to "/events/#{params[:id]}"
    end

    def destroy
        event = Event.find(params[:id])
        part = Participation.where(user: current_user, event: event)
        part.destroy_all
        redirect_to "/events"
    end
end
