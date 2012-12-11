class Player
   def initialize(name,skill)
      @player_name=name
      @player_skill=skill
      
   end
   def display_details()
      puts "#@player_name is a #@player_skill"
    end
end

# Create Objects
player1=Player.new("Sachin Tendulkar","Batsman")
player2=Player.new("Zaheer Khan", "bowler")
player3=Player.new("M_S_dhoni", "wicket_keeper")

# Call Methods
player1.display_details()
player2.display_details()
player3.display_details()