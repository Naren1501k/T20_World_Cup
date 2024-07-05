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
      #
    end

    def Add_players
        #
    end

    def Remove_players
        #
    end

    def print_statistics
        #
    end

  
    def limit
      raise NotImplementedError, "Must be implemented in the subclass"
    end
  
    def return
      raise NotImplementedError, "Must be implemented in the subclass"
    end
  
  end
  
class Player < Team
    include Team
  
    def initialize(team, player_details)
      super(team, number)

      @team = "#{team}"

      @player_details = player_details
    end

    def Add_runs
        #
      end
    
    def Add_wickets
        #
    end
    
    def Player_statistics
        #
    end

    def display_playerdetails
       #
    end
    
end
  
  
 