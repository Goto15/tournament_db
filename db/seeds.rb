atl = Player.create(ign: "Atlanta", elo: 1600)
ben = Player.create(name: "Ben Sullivan", ign: "BeneBeats", elo: 1600)
bmc = Player.create(ign: "bmcfluff", elo: 1600)
connor = Player.create(ign: "Connor", elo: 1600)
dan = Player.create(ign: "DanGing", elo: 1600)
eot = Player.create(ign: "EmperorOTide", elo: 1600)
agenda = Player.create(ign: "EpicAgenda", elo: 1600)
cat = Player.create(ign: "EPICat", elo: 1600)
krok = Player.create(ign: "Krokmaster", elo: 1600)
livious = Player.create(ign: "livious", elo: 1600)
mag = Player.create(ign: "Magnetic", elo: 1600)
nhb = Player.create(ign: "nhblandin", elo: 1600)
nove = Player.create(name: "Nathan Overbay", ign: "noverb", elo: 1600)
tat = Player.create(ign: "TatDaddy", elo: 1600)
tom = Player.create(ign: "TomEpicGamin", elo: 1600)
www = Player.create(ign: "www", elo: 1600)

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

Match.create(tournament_id: 1, winner: mag, loser: tom, round: '1')
Match.create(tournament_id: 1, winner: atl, loser: tat, round: '1')
Match.create(tournament_id: 1, winner: bmc, loser: nhb, round: '1')
Match.create(tournament_id: 1, winner: nove, loser: livious, round: '1')
Match.create(tournament_id: 1, winner: nhb, loser: tom, round: '2')
Match.create(tournament_id: 1, winner: mag, loser: atl, round: '2')
Match.create(tournament_id: 1, winner: bmc, loser: nove, round: '2')
Match.create(tournament_id: 1, winner: tat, loser: livious, round: '2')
Match.create(tournament_id: 1, winner: livious, loser: tom, round: '3')
Match.create(tournament_id: 1, winner: mag, loser: bmc, round: '3')
Match.create(tournament_id: 1, winner: nhb, loser: atl, round: '3')
Match.create(tournament_id: 1, winner: nove, loser: tat, round: '3')