class HellosController < ApplicationController

    def hello
        render text: 'Hello CodingDojo!'
    end

    def say_hello
        render text: 'Saying Hello'
    end

    def say_hello_joe
        render text: 'Saying Hello Joe!'
    end

    def say_hello_michael
        redirect_to "/say/hello/joe"
    end

    def index
        session[:count] = 0
        render text: "WHAT DO YOU WANT ME TO SAY??? WHY AM I ALIVE???? KILL MEEEEEEEEE!!!!!!!"
    end

    def times
        if session[:count] == nil
            session[:count] = 1
        else
            session[:count] += 1
        end
        render text: "You have visited this page #{session[:count]} times"
    end

    def times_restart
        reset_session
        render text: "The session has been destroyed"
    end

end
