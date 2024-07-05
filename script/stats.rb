require 'csv'

def process_csv(file_path)
  players = []
  
  begin
    CSV.foreach(file_path, headers: true) do |row|
      player_name = row['Player name']
      runs_scored = row['Runs scored'].to_i
      balls_faced = row['Balls faced'].to_i
      fours = row['Number of fours'].to_i
      sixes = row['Number of sixes'].to_i
      
    
      if player_name.empty? || runs_scored < 0 || balls_faced < 0 || fours < 0 || sixes < 0
        raise "Invalid data in CSV file"
      end
      
      
      strike_rate = (runs_scored.to_f / balls_faced) * 100
      
     
      player = {
        name: player_name,
        runs: runs_scored,
        balls: balls_faced,
        fours: fours,
        sixes: sixes,
        strike_rate: strike_rate
      }
      
      players << player
    end
  rescue StandardError => e
    puts "Error processing CSV file: #{e.message}"
    return nil
  end
  
  players
end


def print_statistics(players)
  if players.nil?
    puts "Failed to process CSV file. Check for errors."
    return
  end
  
 
  players.each do |player|
    puts "Strike rate of #{player[:name]} is #{player[:strike_rate].round(2)}"
  end
  
 #highest_strike_rate_player = hsep
   hsep = players.max_by { |player| player[:strike_rate] }
  puts "Player with highest strike rate is #{hsep[:name]} with #{hsep[:strike_rate].round(2)}"
  
  #total_runs_scored = trs
  
  trs = players.map { |player| player[:runs] }.sum
  puts "Total runs scored by all players is #{trs}"
  
  # total_balls_faced = tbf
  tbf= players.map { |player| player[:balls] }.sum
  puts "Total balls faced by all players is #{tbf}"
  
 
  most_fours = players.max_by { |player| player[:fours] }
  puts "Player with most fours is #{most_fours[:name]} with #{most_fours[:fours]} fours"
  
 
  most_sixes = players.max_by { |player| player[:sixes] }
  puts "Player with most sixes is #{most_sixes[:name]} with #{most_sixes[:sixes]} sixes"
end

file_path = 'stats.csv'
players = process_csv(file_path)
print_statistics(players)




