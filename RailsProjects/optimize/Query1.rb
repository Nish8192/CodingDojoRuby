players = Player.includes(:team).all

players.each do |player|
    puts "#{player.name} plays for #{player.team.name} whose mascot is #{player.team.mascot} and they play at #{player.team.stadium}"
end
