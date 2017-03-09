class TimesController < ApplicationController
    def index
        @time = (DateTime.now).strftime "%m/%d/%Y %I:%M %p"
        render "times/index.html.erb"
    end
end
