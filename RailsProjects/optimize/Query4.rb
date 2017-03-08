# players = Player.joins(:team).where("teams.stadium = 'Staples Center'")
players = Player.includes(:team).joins(:team).where("teams.stadium = 'Staples Center'")

players.each do |player|
    puts "At the Staples Center, #{player.name} plays for #{player.team.name}"
end
