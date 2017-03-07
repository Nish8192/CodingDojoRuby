def guess_number guess
    my_num = 33
    if guess == my_num
        puts "You got it!!"
    elsif guess > my_num
        puts "Sorry, you guessed too high!"
    else
        puts "Sorry, you guessed too low!"
    end
end

guess_number 50
guess_number 20
guess_number 33
