class StudentsController < ApplicationController
    def destroy
        Student.delete(params[:id])
        redirect_to "dojos/" + params[:dojo_id].to_s
    end

    def new
        @dojos = Dojo.all
        render 'students/new.html.erb'
    end

    def create
        @dojo = Dojo.find(params[:dojo])
        @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo: @dojo)
        redirect_to "/dojos/#{params[:dojo]}"
    end

    def show
        @student = Student.find(params[:id])
        render 'students/show.html.erb'
    end

    def edit
        @student = Student.find(params[:id])
        @dojos = Dojo.all
        render 'students/edit.html.erb'
    end

    def update
        student = Student.find(params[:id])
        dojo = Dojo.find(params[:dojo])
        student.first_name = params[:first_name]
        student.last_name = params[:last_name]
        student.email = params[:email]
        student.dojo = dojo
        student.save
        redirect_to "/dojos/#{dojo.id}"
    end

end
