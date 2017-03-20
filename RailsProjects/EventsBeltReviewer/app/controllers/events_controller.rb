class EventsController < ApplicationController
    def index
        @events = Event.all
        render "events/index.html.erb"
    end
end
