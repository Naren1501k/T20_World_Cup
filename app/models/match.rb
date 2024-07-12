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
        score_team2 = row['score_team2'].to_i
     
      
     
      match = {
        date: date,
        location: location,
        team1_id: team1_id,
        team2_id: team2_id,
        score_team1: score_team1,
        score_team2: score_team2
      }
      
      matches << match
    end
  matches
end
end
file_path = 'matches.csv'
matches = process_csv(file_path)
print_statistics(matches)
