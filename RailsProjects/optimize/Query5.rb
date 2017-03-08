players = Player.includes(:team).joins(:team).where("players.name LIKE 'Z%'")

players.each do |player|
    puts "#{player.team.name} has a player whose name starts with Z: #{player.name}"
end
# teams = Team.joins(:player).includes(:team).
