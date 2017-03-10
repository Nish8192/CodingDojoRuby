class DojosController < ApplicationController
    def index
        if session[:errors] == nil
            session[:errors] = []
        end
        @dojos = Dojo.all
        render 'dojos/index.html.erb'
    end

    def new
        render 'dojos/new.html.erb'
    end

    def create
        dojo = Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        if dojo.valid?
            flash[:errors] = ["New Dojo was successfully created!!"]
            redirect_to '/'
        else
            flash[:errors] = dojo.errors.full_messages
            redirect_to '/dojos/new'
        end
    end

end
