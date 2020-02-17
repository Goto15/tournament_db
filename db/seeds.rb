# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create(ign: "Atlanta", elo: 1600)
atl = Player.find(1)
Player.create(name: "Ben Sullivan", ign: "BeneBeats", elo: 1600)
ben = Player.find(2)
Player.create(ign: "bmcfluff", elo: 1600)
bmc = Player.find(3)
Player.create(ign: "Connor", elo: 1600)
connor = Player.find(4)
Player.create(ign: "DanGing", elo: 1600)
dan = Player.find(5)
Player.create(ign: "EmperorOTide", elo: 1600)
eot = Player.find(6)
Player.create(ign: "EpicAgenda", elo: 1600)
agenda = Player.find(7)
Player.create(ign: "EPICat", elo: 1600)
cat = Player.find(8)
Player.create(ign: "Krokmaster", elo: 1600)
krok = Player.find(9)
Player.create(ign: "livious", elo: 1600)
livious = Player.find(10)
Player.create(ign: "Magnetic", elo: 1600)
mag = Player.find(11)
Player.create(ign: "nhblandin", elo: 1600)
nhb = Player.find(12)
Player.create(name: "Nathan Overbay", ign: "noverb", elo: 1600)
nove = Player.find(13)
Player.create(ign: "TatDaddy", elo: 1600)
tat = Player.find(14)
Player.create(ign: "TomEpicGamin", elo: 1600)
tom = Player.find(15)
Player.create(ign: "www", elo: 1600)
www = Player.find(16)

Deck.create(name: "No decklisted")

Tournament.create(name: "May 2019 Monthly Digital", format: "Constructed", date: DateTime.new(2019, 5, 25))
Tournament.create(name: "June 2019 Monthly Digital", format: "Constructed", date: DateTime.new(2019, 6, 29))
Tournament.create(name: "July 2019 Monthly Digital", format: "Dark Draft", date: DateTime.new(2019, 7, 27))
Tournament.create(name: "August 2019 Monthly Digital", format: "Constructed", date: DateTime.new(2019, 8, 31))
Tournament.create(name: "September 2019 Monthly Digital", format: "Dark Draft", date: DateTime.new(2019, 9, 28))

Registration.create(player_id: mag.id, deck_id: 1) # Magnetic
mag = Registration.find(1)
Registration.create(player_id: tom.id, deck_id: 1) # TomEpicGamin
tom = Registration.find(2)
Registration.create(player_id: atl.id, deck_id: 1) # Atlanta
atl = Registration.find(3)
Registration.create(player_id: tat.id, deck_id: 1) # TatDaddy
tat = Registration.find(4)
Registration.create(player_id: bmc.id, deck_id: 1) # bmcfluff
bmc = Registration.find(5)
Registration.create(player_id: nhb.id, deck_id: 1) # nhblandin
nhb = Registration.find(6)
Registration.create(player_id: nove.id, deck_id: 1) # noverb
nove = Registration.find(7)
Registration.create(player_id: livious.id, deck_id: 1) # livious
livious = Registration.find(8)

Match.create(tournament_id: 1, winner_id: mag.id, loser_id: tom.id, round: '1')
Match.create(tournament_id: 1, winner_id: atl.id, loser_id: tat.id, round: '1')
Match.create(tournament_id: 1, winner_id: bmc.id, loser_id: nhb.id, round: '1')
Match.create(tournament_id: 1, winner_id: nove.id, loser_id: livious.id, round: '1')
Match.create(tournament_id: 1, winner_id: nhb.id, loser_id: tom.id, round: '2')
Match.create(tournament_id: 1, winner_id: mag.id, loser_id: atl.id, round: '2')
Match.create(tournament_id: 1, winner_id: bmc.id, loser_id: nove.id, round: '2')
Match.create(tournament_id: 1, winner_id: tat.id, loser_id: livious.id, round: '2')
Match.create(tournament_id: 1, winner_id: livious.id, loser_id: tom.id, round: '3')
Match.create(tournament_id: 1, winner_id: mag.id, loser_id: bmc.id, round: '3')
Match.create(tournament_id: 1, winner_id: nhb.id, loser_id: atl.id, round: '3')
Match.create(tournament_id: 1, winner_id: nove.id, loser_id: tat.id, round: '3')