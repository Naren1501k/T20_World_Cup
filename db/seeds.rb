# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 
    # Team.create(name:'TeamA',country:'USA',founded:'1901')
    # Team.create(name:'Team B',country:'UK',founded:'1895')
    # Team.create(name:'Team C',country:'SPAIN',founded:'1920')
    # Team.create(name:'Team D',country:'GERMANY',founded:'1887')
    # Team.create(name:'Team E',country:'ITALY',founded:'1905')
    # Team.create(name:'Team F',country:'FRANCE',founded:'1899')
    # Team.create(name:'Team G',country:'BRAZIL',founded:'1910')
    # Team.create(name:'Team H',country:'ARGENTINA',founded:'1913')
    # Team.create(name:'Team I',country:'MEXICO',founded:'1922')
    # Team.create(name:'Team J',country:'NERTER LAND',founded:'1900')

    Player.create(name:'Player 1', age:25, position:'Forward', team_id:1)
    Player.create(name:'Player 2', age:30, position:'Midfielder', team_id:1)
    Player.create(name:'Player 3', age:22, position:'Defender', team_id:2)
    Player.create(name:'Player 4', age:27, position:'Goalkeeper', team_id:2)
    Player.create(name:'Player 5', age:24, position:'Forward', team_id:3)
    Player.create(name:'Player 6', age:29, position:'Midfielder',team_id:3)
    Player.create(name:'Player 7', age:21, position:'Defender', team_id:4)
    Player.create(name:'Player 8', age:26, position:'Goalkeeper', team_id:4)
    Player.create(name:'Player 9', age:23, position:'Forward', team_id:5)
    Player.create(name:'Player 10', age:28,position: 'Midfielder',team_id:5)
    Player.create(name:'Player 11', age:31, position:'Defender', team_id:6)
    Player.create(name:'Player 12', age:20, position:'Goalkeeper', team_id:6)
    Player.create(name:'Player 13', age:22, position:'Forward', team_id:7)
    Player.create(name:'Player 14', age:24, position:'Midfielder', team_id:7)
    Player.create(name:'Player 15', age:26, position:'Defender', team_id:8)
    Player.create(name:'Player 16', age:25, position:'Goalkeeper', team_id:8)
    Player.create(name:'Player 17', age:29, position:'Forward',team_id:9)
    Player.create(name:'Player 18', age:27, position:'Midfielder', team_id:9)
    Player.create(name:'Player 19', age:21, position:'Defender', team_id:10)
    Player.create(name:'Player 20', age:30, position:'Goalkeeper', team_id:10)
    Player.create(name:'Player 21', age:23, position:'Forward', team_id:1)
    Player.create(name:'Player 22', age:25, position:'Midfielder', team_id:2)
    Player.create(name:'Player 23', age:28, position:'Defender', team_id:3)
    Player.create(name:'Player 24', age:31, position:'Goalkeeper', team_id:4)
    Player.create(name:'Player 25', age:20, position:'Forward', team_id:5)
    Player.create(name:'Player 26', age:22, position:'Midfielder', team_id:6)
    Player.create(name:'Player 27', age:27, position:'Defender', team_id:7)
    Player.create(name:'Player 28', age:29, position:'Goalkeeper', team_id:8)
    Player.create(name:'Player 29', age:24, position:'Forward', team_id:9)
    Player.create(name:'Player 30', age:26, position:'Midfielder', team_id:10)



    