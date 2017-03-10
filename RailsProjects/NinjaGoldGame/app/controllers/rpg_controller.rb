class RpgController < ApplicationController

    def index
        if session[:gold] == nil
            session[:gold] = 0
            session[:activities] = ""
        end
        render 'rpg/index.html.erb'
    end
  def farm
      now = (DateTime.now).strftime "%m/%d/%Y %I:%M %p"
      num = rand(10..20)
      session[:gold] += num
      session[:activities] += "Earned #{num} gold from going to the Farm! #{now}\n"
      redirect_to "/"
  end

  def cave
      now = (DateTime.now).strftime "%m/%d/%Y %I:%M %p"
      num = rand(5..10)
      session[:gold] += num
      session[:activities] += "Earned #{num} gold from going to the Cave! #{now}\n"
      redirect_to "/"
  end

  def casino
      now = (DateTime.now).strftime "%m/%d/%Y %I:%M %p"
      num = rand(-50..50)
      session[:gold] += num
      if num > 0
          num = num * -1
          session[:activities] += "Earned #{num} gold from going to the Casino! #{now}\n"
      else
          session[:activities] += "Lost #{num} gold from going to the Casino :(( #{now}\n"
      end
      redirect_to "/"
  end

  def house
      now = (DateTime.now).strftime "%m/%d/%Y %I:%M %p"
      num = rand(2..5)
      session[:gold] += num
      session[:activities] += "Earned #{num} gold from going to the house! #{now}\n"
      redirect_to "/"
  end
end
