module Cricket
    class Team
      attr_reader :team_name, :players_number
      
      def initialize(team_name)
        @team_name = team_name
        @players_number = 0
        @players = []
      end
      
      def display_details
        puts "Team: #{@team_name}"
        puts "Number of players: #{@players_number}"
      end
      
      def max_players_reached?
        @players_number >= 11
      end
      
      def add_player(name)
        if max_players_reached?
          puts "Team is full"
        else
          @players << name
          @players_number += 1
          puts "Player #{name} added"
        end
      end
      
      def remove_player(name)
        if @players.empty?
          puts "Team is empty"
        else
          if @players.delete(name)
            @players_number -= 1
            puts "Player #{name} removed"
          else
            puts "Player #{name} not found in the team"
          end
        end
      end
      
      def team_statistics
        puts "Team: #{@team_name}"
        puts "Number of players: #{@players_number}"
        puts "Players: #{@players.join(', ')}"
      end
    end
    
    class Player
      attr_reader :name, :runs, :wickets
      
      def initialize(name)
        @name = name
        @runs = 0
        @wickets = 0
      end
      
      def add_runs(runs)
        @runs += runs
        puts "#{runs} runs added to #{@name}'s score"
      end
      
      def add_wickets(wickets)
        @wickets += wickets
        puts "#{wickets} wickets added to #{@name}'s stats"
      end
      
      def player_statistics
        puts "Player: #{@name}"
        puts "Runs: #{@runs}"
        puts "Wickets: #{@wickets}"
      end
    end
  end
  
  # Example usage:
  
  # Create a team
  team_india = Cricket::Team.new("India")
  team_india.display_details
  
  # Add players to the team
  team_india.add_player("Virat Kohli")
  team_india.add_player("Rohit Sharma")
  team_india.add_player("MS Dhoni")
  team_india.add_player("Ravichandran Ashwin")
  team_india.add_player("Jasprit Bumrah")
  team_india.add_player("Mohammed Shami")
  team_india.add_player("Rishabh Pant")
  team_india.display_details
  
#   # Remove a player from the team
#   team_india.remove_player("Virat Kohli")
#   team_india.display_details
  
  # Create a player and update statistics
  player1 = Cricket::Player.new("Virat Kohli")
  player1.add_runs(100)
  player1.add_wickets(0)
  player1.player_statistics

  player2 = Cricket::Player.new("Rohit Sharma")
  player2.add_runs(150)
  player2.add_wickets(0)
  player2.player_statistics

  player3 = Cricket::Player.new("jasprit Bumrah")
  player3.add_runs(8)
  player3.add_wickets(33)
  player3.player_statistics
  
  team_india.team_statistics
