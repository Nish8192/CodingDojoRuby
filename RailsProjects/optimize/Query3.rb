players = Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)

players.each do |player|
    puts "#{player.name}"
end
