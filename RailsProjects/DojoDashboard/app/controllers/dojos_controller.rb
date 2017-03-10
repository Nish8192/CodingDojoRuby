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

    def show
        @dojo = Dojo.find(params[:id])
        render 'dojos/show.html.erb'
    end

    def edit
        @dojo = Dojo.find(params[:id])
        render 'dojos/edit.html.erb'
    end

    def update
        @dojo = Dojo.find(params[:id])
        @dojo.branch = params[:branch]
        @dojo.street = params[:street]
        @dojo.city = params[:city]
        @dojo.state = params[:state]
        @dojo.save
        if @dojo.valid?
            flash[:errors] = ["Changes saved!"]
            redirect_to '/'
        else
            flash[:errors] = @dojo.errors.full_messages
            redirect_to '/dojos/edit/' + (@dojo.id).to_s
        end

    end

    def destroy
        Dojo.destroy(params[:id])
        redirect_to '/'
    end

end
