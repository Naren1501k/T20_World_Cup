class Player < ApplicationRecord
    belongs_to :teams
    has_many :matches
  
  def self.retriveteam
    team_id = 1
    players = Player.where(team_id: team_id)
    puts "Players of team #{team_id}: #{players.map(&:name).join(', ')}"
  end
  
  def self.retrive_age
    age = 25
    older_players = Player.where('age > ?', age)
    puts "Players older than #{age}: #{older_players.map(&:name).join(', ')}"
  end
  
end