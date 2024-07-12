class Team < ApplicationRecord
    has_many :players
    def self.wheree
        ans = Team.where(Team.name = "uk").select(Team.name,Team.country,Team.founded)
        ans.each do |i|
            puts i.name
        end
        ans 
    end

    def self.certainyear
        teams = Team.where("founding_year < ?", founding_year)
        teams.each do |team|
          puts team.inspect
        end
    end
 
    def self.newteam
        new_team = Team.new(name: 'New Team', country: 'USA', founding_year: 2010)
        new_team.save!
        new_team
        end
    end

    def self.contry_of_specificteam
        new_country = 'Canada'
        team = Team.find_by(name: Team.name)
        if team
          team.update(country: new_country)
        end
    end

    
   
end
