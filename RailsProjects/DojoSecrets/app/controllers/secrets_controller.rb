class SecretsController < ApplicationController

    def show
        @secrets = Secret.all
        render "secrets/show.html.erb"
    end

    def create
        secret = Secret.create(secret: params[:secret], user: current_user)
        if secret.valid?
            flash[:errors] = ["Secret successfully saved!"]
        else
            flash[:errors] = ["Invalid secret"]
        end
        redirect_to "/users/#{current_user.id}"
    end

    def destroy
        secret = Secret.find(params[:id])
        secret.destroy
        redirect_to "/users/#{current_user.id}"
    end
end
