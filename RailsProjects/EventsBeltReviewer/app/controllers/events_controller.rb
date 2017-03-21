class EventsController < ApplicationController
    def index
        @in_state_events = Event.where(state: current_user.state)
        @other_events = Event.where.not(state: current_user.state)
        render "events/index.html.erb"
    end

    def create
        event = Event.create(name: params[:name], user: current_user, date: params[:date], location: params[:location], state: params[:state])
        if event.valid?
            flash[:errors] = ["Event created successfully!!"]
            Participation.create(user: current_user, event: event)
            redirect_to "/events"
        else
            flash[:errors] = event.errors.full_messages
            redirect_to "/events"
        end
    end

    def view
        @event = Event.find(params[:id])
        @comments = Comment.where(event: @event)
        render "events/view.html.erb"
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        redirect_to "/events"
    end
end
