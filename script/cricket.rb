module Cricket
  class Team
    attr_reader :team, :number
  
    def initialize(team,number)

      @team = team

      @number = num

      @limit = false
    end
  
    def display_details
      puts "Team: #{@team}"

      puts "Number of players #{@number}"

    end

    def MAX_players
      if @number > 11
        @limit = true
        end
    end

    def Add_players
        if @limit == true
            puts "Team is full"
        else
            puts "Enter the name of the player"
            name = gets.chomp
            @number += 1
            puts "Player added"
        end    
    end

    def Remove_players
        if @number == 0
            puts "Team is empty"
        else
            puts "Enter the name of the player"
            name = gets.chomp
            @number -= 1
            puts "Player removed"
        end

    def Team_statistics
        puts "Team: #{@team}"
        puts "Number of players #{@number}"
    end
  
class Player < Team
    include Team
  
    def initialize(team, player_details)
      super(team, number)

      @team = "#{team}"

      @player_details = player_details
    end

    def Add_runs
        puts "Enter the runs scored by the player"
        runs = gets.chomp.to_i
        @player_details[:runs] += runs
    end
    
    def Add_wickets
        puts "Enter the wickets taken by the player"
        wickets = gets.chomp.to_i
        @player_details[:wickets] += wickets

    end
    
    def Player_statistics
        puts "Player: #{@player_details[:name]}"
        puts "Runs: #{@player_details[:runs]}"
        puts "Wickets: #{@player_details[:wickets]}"

    end
    
end
  
  
 