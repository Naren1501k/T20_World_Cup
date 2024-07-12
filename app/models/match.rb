class Match < ApplicationRecord
    belongs_to :players
    belongs_to :teams

    require 'csv'

def process_csv(file_path)
    matches = []
    
    begin
      CSV.foreach(file_path, headers: true) do |row|
        date = row['date']
        location = row['location'].to_s
        team1_id = row['team1_id'].to_i
        team2_id = row['team2_id'].to_i
        score_team1 = row['score_team1'].to_i
        score_team1 = row['score_team1'].to_i
        score_team1 = row['score_team1'].to_i
        
        
      if date.empty? || location.empty? || balls_faced < 0 || fours < 0 || sixes < 0
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
end
file_path = 'matches.csv'
players = process_csv(file_path)
print_statistics(players)
