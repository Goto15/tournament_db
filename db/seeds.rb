# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create(ign: "Atlanta", elo: 1600)
Player.create(name: "Ben Sullivan", ign: "BeneBeats", elo: 1600)
Player.create(ign: "bmcfluff", elo: 1600)
Player.create(ign: "Connor", elo: 1600)
Player.create(ign: "DanGing", elo: 1600)
Player.create(ign: "EmperorOTide", elo: 1600)
Player.create(ign: "EpicAgenda", elo: 1600)
Player.create(ign: "EPICat", elo: 1600)
Player.create(ign: "Krokmaster", elo: 1600)
Player.create(ign: "livious", elo: 1600)
Player.create(ign: "Magnetic", elo: 1600)
Player.create(ign: "nhblandin", elo: 1600)
Player.create(name: "Nathan Overbay", ign: "noverb", elo: 1600)
Player.create(ign: "TatDaddy", elo: 1600)
Player.create(ign: "TomEpicGamin", elo: 1600)
Player.create(ign: "www", elo: 1600)

Tournament.create(name: "May 2019 Monthly Digital", format: "Constructed", date: 5-25-2019)
Tournament.create(name: "June 2019 Monthly Digital", format: "Constructed", date: 6-29-2019)
Tournament.create(name: "July 2019 Monthly Digital", format: "Dark Draft", date: 7-27-2019)
Tournament.create(name: "August 2019 Monthly Digital", format: "Constructed", date: 8-31-2019)
Tournament.create(name: "September 2019 Monthly Digital", format: "Dark Draft", date: 9-28-2019)

Registration.create()