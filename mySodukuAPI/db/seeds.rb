# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Score.destroy_all


Game.create(difficulty:"easy",game_array_start:[[0,0,4,5,0,0,8,0,0],[0,0,5,0,6,0,4,7,0],[0,7,8,0,0,9,0,3,5],[3,1,0,4,5,0,0,0,8],[0,0,6,8,0,7,2,3,5],[7,0,9,0,0,0,5,0,4],[0,0,0,0,0,0,0,8,7],[8,6,0,0,0,0,0,4,1],[0,0,3,7,0,1,0,5,2]],game_array_end:[])
Game.create(difficulty:"easy",game_array_start:[[9,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,6,7,8],[0,0,0,2,3,4,0,0,9],[0,2,0,4,7,5,0,9,0],[4,6,5,3,0,8,0,1,7],[7,8,0,0,1,2,3,4,0],[3,0,0,5,0,0,0,0,4],[0,4,2,9,0,1,0,6,3],[8,9,0,0,0,0,0,0,0]],game_array_end:[])
Game.create(difficulty:"easy",game_array_start:[[0,0,0,0,0,9,4,0,1],[1,0,0,0,0,7,0,8,0],[0,5,0,0,3,0,0,0,0],[0,0,0,0,5,0,7,9,0],[3,7,0,0,0,1,6,2,0],[6,9,8,0,7,0,1,0,0],[5,0,0,0,0,2,0,4,0],[7,8,0,9,4,5,3,0,0],[0,0,0,6,0,3,8,7,5]],game_array_end:[])
Game.create(difficulty:"easy",game_array_start:[[0,0,0,0,0,0,0,0,4],[0,0,0,0,0,7,0,0,9],[0,6,0,0,4,0,2,3,7],[0,1,3,0,0,0,0,9,8],[4,5,0,7,8,0,0,2,0],[0,0,6,2,9,3,1,0,5],[3,4,0,0,7,0,0,6,0],[6,7,0,9,0,4,0,0,3],[0,0,5,6,0,0,0,7,0]],game_array_end:[])
Game.create(difficulty:"easy",game_array_start:[[0,0,1,0,4,7,2,0,0],[0,3,0,0,5,0,6,0,0],[0,0,9,0,0,0,1,0,0],[0,0,0,0,0,0,0,0,9],[0,0,0,0,0,8,3,1,2],[8,0,7,0,1,2,0,5,6],[0,1,2,0,0,0,9,6,7],[0,4,0,9,7,0,8,0,0],[9,7,0,6,2,1,5,3,0]],game_array_end:[])

Score.create(game_score:5,gamer_name:"gamerA",game:Game.first,game_pass: 'true')
Score.create(game_score:7,gamer_name:"gamerB",game:Game.second,game_pass: 'false')
Score.create(game_score:10,gamer_name:"gamerC",game:Game.first,game_pass: 'fail')