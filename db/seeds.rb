Deck.create(name: 'No deck listed')

luc = Player.create(ign: 'HLuca', elo: 1600)
mat = Player.create(ign: 'Moxlessmatt', elo: 1600)
ben = Player.create(name: 'Ben Sullivan', ign: 'BeneBeats', elo: 1600)
ham = Player.create(ign: 'Hampuse1', elo: 1600)
nat = Player.create(ign: 'noverb', elo: 1600)
tat = Player.create(ign: 'TatDaddy', elo: 1600)
bmc = Player.create(ign: 'bmcfluff', elo: 1600)
mag = Player.create(ign: 'Magnetic', elo: 1600)
nhb = Player.create(ign: 'NHBlandin', elo: 1600)
atl = Player.create(ign: 'Atlanta', elo: 1600)
tom = Player.create(ign: 'TomEpicGamin', elo: 1600)
epi = Player.create(ign: 'EpicAgenda', elo: 1600)

t1 = Tournament.create(name: 'February 2020 Monthly Digital', format: 'Dark Draft', date: DateTime.new(2020, 2, 29))

luc_reg = Registration.create(player_id: luc.id, deck_id: 1)
mat_reg = Registration.create(player_id: mat.id, deck_id: 1)
ben_reg = Registration.create(player_id: ben.id, deck_id: 1)
ham_reg = Registration.create(player_id: ham.id, deck_id: 1)
nat_reg = Registration.create(player_id: nat.id, deck_id: 1)
tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
bmc_reg = Registration.create(player_id: bmc.id, deck_id: 1)
mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
nhb_reg = Registration.create(player_id: nhb.id, deck_id: 1)
atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
epi_reg = Registration.create(player_id: epi.id, deck_id: 1)

# February Round 1
Match.create(tournament_id: t1.id, winner: luc_reg, loser: mat_reg, round: '1')
Match.create(tournament_id: t1.id, winner: ben_reg, loser: ham_reg, round: '1')
Match.create(tournament_id: t1.id, winner: tat_reg, loser: nat_reg, round: '1')
Match.create(tournament_id: t1.id, winner: bmc_reg, loser: mag_reg, round: '1')
Match.create(tournament_id: t1.id, winner: atl_reg, loser: nhb_reg, round: '1')
Match.create(tournament_id: t1.id, winner: tom_reg, loser: epi_reg, round: '1')
# February Round 2
Match.create(tournament_id: t1.id, winner: tat_reg, loser: atl_reg, round: '2')
Match.create(tournament_id: t1.id, winner: ben_reg, loser: bmc_reg, round: '2')
Match.create(tournament_id: t1.id, winner: tom_reg, loser: luc_reg, round: '2')
Match.create(tournament_id: t1.id, winner: nhb_reg, loser: mat_reg, round: '2')
Match.create(tournament_id: t1.id, winner: mag_reg, loser: nat_reg, round: '2')
Match.create(tournament_id: t1.id, winner: ham_reg, loser: epi_reg, round: '2')
# February Round 3
Match.create(tournament_id: t1.id, winner: ham_reg, loser: bmc_reg, round: '3')
Match.create(tournament_id: t1.id, winner: mag_reg, loser: nhb_reg, round: '3')
Match.create(tournament_id: t1.id, winner: epi_reg, loser: luc_reg, round: '3')
Match.create(tournament_id: t1.id, winner: nat_reg, loser: mat_reg, round: '3')
Match.create(tournament_id: t1.id, winner: tat_reg, loser: ben_reg, round: '3')
Match.create(tournament_id: t1.id, winner: tom_reg, loser: atl_reg, round: '3')
# February Round 4
Match.create(tournament_id: t1.id, winner: tom_reg, loser: tat_reg, round: '4')
Match.create(tournament_id: t1.id, winner: mag_reg, loser: ben_reg, round: '4')
Match.create(tournament_id: t1.id, winner: atl_reg, loser: ham_reg, round: '4')
Match.create(tournament_id: t1.id, winner: bmc_reg, loser: nhb_reg, round: '4')
Match.create(tournament_id: t1.id, winner: epi_reg, loser: mat_reg, round: '4')
Match.create(tournament_id: t1.id, winner: luc_reg, loser: nat_reg, round: '4')
# February Semifinals
semi = 'semifinals'
Match.create(tournament_id: t1.id, winner: tom_reg, loser: atl_reg, round: semi)
Match.create(tournament_id: t1.id, winner: tat_reg, loser: mag_reg, round: semi)
# February Finals
Match.create(tournament_id: t1.id, winner: tat_reg, loser: tom_reg, round: 'finals')

# March New Players
ped = Player.create(ign: 'Pedro', elo: 1600)
kro = Player.create(ign: 'Krokmaster', elo: 1600)
sir = Player.create(ign: 'Sir3', elo: 1600)
por = Player.create(ign: 'Porkylorky', elo: 1600)
cat = Player.create(ign: 'EPICat', elo: 1600)
www = Player.create(ign: 'www', elo: 1600)
gyp = Player.create(ign: 'GeneralGyp', elo: 1600)
oak = Player.create(ign: 'OakenShield', elo: 1600)

# March Registrations
tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
ben_reg = Registration.create(player_id: ben.id, deck_id: 1)
mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
ham_reg = Registration.create(player_id: ham.id, deck_id: 1)
atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
ped_reg = Registration.create(player_id: ped.id, deck_id: 1)
kro_reg = Registration.create(player_id: kro.id, deck_id: 1)
sir_reg = Registration.create(player_id: sir.id, deck_id: 1)
por_reg = Registration.create(player_id: por.id, deck_id: 1)
cat_reg = Registration.create(player_id: cat.id, deck_id: 1)
www_reg = Registration.create(player_id: www.id, deck_id: 1)
gyp_reg = Registration.create(player_id: gyp.id, deck_id: 1)
oak_reg = Registration.create(player_id: oak.id, deck_id: 1)

# March Tournament
t2 = Tournament.create(name: 'March 2020 Monthly Digital', format: 'Constructed', date: DateTime.new(2020, 3, 28))

# March Round 1
Match.create(tournament_id: t2.id, winner: tom_reg, loser: ped_reg, round: '1')
Match.create(tournament_id: t2.id, winner: ben_reg, loser: kro_reg, round: '1')
Match.create(tournament_id: t2.id, winner: sir_reg, loser: mag_reg, round: '1')
Match.create(tournament_id: t2.id, winner: ham_reg, loser: por_reg, round: '1')
Match.create(tournament_id: t2.id, winner: www_reg, loser: cat_reg, round: '1')
Match.create(tournament_id: t2.id, winner: atl_reg, loser: gyp_reg, round: '1')
Match.create(tournament_id: t2.id, winner: tat_reg, loser: oak_reg, round: '1')
# March Round 2
Match.create(tournament_id: t2.id, winner: tom_reg, loser: www_reg, round: '2')
Match.create(tournament_id: t2.id, winner: tat_reg, loser: sir_reg, round: '2')
Match.create(tournament_id: t2.id, winner: atl_reg, loser: ben_reg, round: '2')
Match.create(tournament_id: t2.id, winner: ped_reg, loser: ham_reg, round: '2')
Match.create(tournament_id: t2.id, winner: mag_reg, loser: oak_reg, round: '2')
Match.create(tournament_id: t2.id, winner: cat_reg, loser: kro_reg, round: '2')
Match.create(tournament_id: t2.id, winner: por_reg, loser: gyp_reg, round: '2')
# March Round 3
Match.create(tournament_id: t2.id, winner: atl_reg, loser: tom_reg, round: '3')
Match.create(tournament_id: t2.id, winner: www_reg, loser: tat_reg, round: '3')
Match.create(tournament_id: t2.id, winner: ped_reg, loser: sir_reg, round: '3')
Match.create(tournament_id: t2.id, winner: ben_reg, loser: ham_reg, round: '3')
Match.create(tournament_id: t2.id, winner: mag_reg, loser: cat_reg, round: '3')
Match.create(tournament_id: t2.id, winner: oak_reg, loser: por_reg, round: '3')
Match.create(tournament_id: t2.id, winner: gyp_reg, loser: kro_reg, round: '3')
# March Round 4
Match.create(tournament_id: t2.id, winner: www_reg, loser: atl_reg, round: '4')
Match.create(tournament_id: t2.id, winner: tom_reg, loser: ben_reg, round: '4')
Match.create(tournament_id: t2.id, winner: tat_reg, loser: ped_reg, round: '4')
Match.create(tournament_id: t2.id, winner: ham_reg, loser: mag_reg, round: '4')
Match.create(tournament_id: t2.id, winner: oak_reg, loser: sir_reg, round: '4')
Match.create(tournament_id: t2.id, winner: gyp_reg, loser: cat_reg, round: '4')
Match.create(tournament_id: t2.id, winner: por_reg, loser: kro_reg, round: '4')
# March Semifinals
Match.create(tournament_id: t2.id, winner: tat_reg, loser: atl_reg, round: 'semifinals')
Match.create(tournament_id: t2.id, winner: tom_reg, loser: www_reg, round: 'semifinals')
# March Finals
Match.create(tournament_id: t2.id, winner: tom_reg, loser: tat_reg, round: 'finals')

# April New Players
esc = Player.create(ign: 'escopeta666', elo: 1600)
jaz = Player.create(ign: 'jazzbjorn', elo: 1600)
avi = Player.create(ign: 'Avian', elo: 1600)
emp = Player.create(ign: 'EmperorOTide', elo: 1600)
tat = Player.create(ign: 'Tatian', elo: 1600)
was = Player.create(ign: 'Wasabi', elo: 1600)

# April Tournament
t3 = Tournament.create(name: 'April 2020 Monthly Digital', format: 'Dark Draft', date: DateTime.new(2020, 4, 25))

# April Registrations
esc_reg = Registration.create(player_id: esc.id, deck_id: 1)
por_reg = Registration.create(player_id: por.id, deck_id: 1)
jaz_reg = Registration.create(player_id: jaz.id, deck_id: 1)
avi_reg = Registration.create(player_id: avi.id, deck_id: 1)
ham_reg = Registration.create(player_id: ham.id, deck_id: 1)
sir_reg = Registration.create(player_id: sir.id, deck_id: 1)
mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
emp_reg = Registration.create(player_id: emp.id, deck_id: 1)
tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
was_reg = Registration.create(player_id: was.id, deck_id: 1)
bmc_reg = Registration.create(player_id: bmc.id, deck_id: 1)

# April Round 1
Match.create(tournament_id: t3.id, winner: por_reg, loser: esc_reg, round: '1')
Match.create(tournament_id: t3.id, winner: avi_reg, loser: jaz_reg, round: '1')
Match.create(tournament_id: t3.id, winner: sir_reg, loser: ham_reg, round: '1')
Match.create(tournament_id: t3.id, winner: mag_reg, loser: emp_reg, round: '1')
Match.create(tournament_id: t3.id, winner: epi_reg, loser: tom_reg, round: '1')
Match.create(tournament_id: t3.id, winner: atl_reg, loser: tat_reg, round: '1')
Match.create(tournament_id: t3.id, winner: was_reg, loser: bmc_reg, round: '1')
# April Round 2
Match.create(tournament_id: t3.id, winner: epi_reg, loser: atl_reg, round: '2')
Match.create(tournament_id: t3.id, winner: por_reg, loser: sir_reg, round: '2')
Match.create(tournament_id: t3.id, winner: avi_reg, loser: was_reg, round: '2')
Match.create(tournament_id: t3.id, winner: mag_reg, loser: esc_reg, round: '2')
Match.create(tournament_id: t3.id, winner: jaz_reg, loser: ham_reg, round: '2')
Match.create(tournament_id: t3.id, winner: tat_reg, loser: tom_reg, round: '2')
Match.create(tournament_id: t3.id, winner: bmc_reg, loser: emp_reg, round: '2')
# April Round 3
Match.create(tournament_id: t3.id, winner: avi_reg, loser: epi_reg, round: '3')
Match.create(tournament_id: t3.id, winner: por_reg, loser: mag_reg, round: '3')
Match.create(tournament_id: t3.id, winner: atl_reg, loser: was_reg, round: '3')
Match.create(tournament_id: t3.id, winner: sir_reg, loser: jaz_reg, round: '3')
Match.create(tournament_id: t3.id, winner: tat_reg, loser: bmc_reg, round: '3')
Match.create(tournament_id: t3.id, winner: tom_reg, loser: esc_reg, round: '3')
Match.create(tournament_id: t3.id, winner: ham_reg, loser: emp_reg, round: '3')
# April Round 4
Match.create(tournament_id: t3.id, winner: por_reg, loser: avi_reg, round: '4')
Match.create(tournament_id: t3.id, winner: sir_reg, loser: epi_reg, round: '4')
Match.create(tournament_id: t3.id, winner: mag_reg, loser: atl_reg, round: '4')
Match.create(tournament_id: t3.id, winner: tat_reg, loser: jaz_reg, round: '4')
Match.create(tournament_id: t3.id, winner: was_reg, loser: tom_reg, round: '4')
Match.create(tournament_id: t3.id, winner: ham_reg, loser: bmc_reg, round: '4')
Match.create(tournament_id: t3.id, winner: esc_reg, loser: emp_reg, round: '4')
# April Semifinals
Match.create(tournament_id: t3.id, winner: mag_reg, loser: por_reg, round: 'semifinals')
Match.create(tournament_id: t3.id, winner: sir_reg, loser: avi_reg, round: 'semifinals')
# April Finals
Match.create(tournament_id: t3.id, winner: mag_reg, loser: sir_reg, round: 'finals')

# May Tournament
t4 = Tournament.create(name: 'May 2020 Monthly Digital', format: 'Constructed', date: DateTime.new(2020, 5, 30))

# May New Players
dre = Player.create(ign: 'Drewise1', elo: 1600)
bet = Player.create(ign: 'bethzur', elo: 1600)
liv = Player.create(ign: 'livious', elo: 1600)

# May Registrations
ben_reg = Registration.create(player_id: ben.id, deck_id: 1)
epi_reg = Registration.create(player_id: epi.id, deck_id: 1)
avi_reg = Registration.create(player_id: avi.id, deck_id: 1)
mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
dre_reg = Registration.create(player_id: dre.id, deck_id: 1)
tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
liv_reg = Registration.create(player_id: liv.id, deck_id: 1)
tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
ham_reg = Registration.create(player_id: ham.id, deck_id: 1)
bet_reg = Registration.create(player_id: bet.id, deck_id: 1)
atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
nat_reg = Registration.create(player_id: nat.id, deck_id: 1)

# May Round 1
Match.create(tournament_id: t4.id, winner: ben_reg, loser: epi_reg, round: '1')
Match.create(tournament_id: t4.id, winner: mag_reg, loser: avi_reg, round: '1')
Match.create(tournament_id: t4.id, winner: dre_reg, loser: tat_reg, round: '1')
Match.create(tournament_id: t4.id, winner: liv_reg, loser: tom_reg, round: '1')
Match.create(tournament_id: t4.id, winner: ham_reg, loser: bet_reg, round: '1')
Match.create(tournament_id: t4.id, winner: nat_reg, loser: atl_reg, round: '1')
# May Round 2
Match.create(tournament_id: t4.id, winner: dre_reg, loser: ben_reg, round: '2')
Match.create(tournament_id: t4.id, winner: nat_reg, loser: mag_reg, round: '2')
Match.create(tournament_id: t4.id, winner: ham_reg, loser: liv_reg, round: '2')
Match.create(tournament_id: t4.id, winner: atl_reg, loser: tat_reg, round: '2')
Match.create(tournament_id: t4.id, winner: epi_reg, loser: bet_reg, round: '2')
Match.create(tournament_id: t4.id, winner: avi_reg, loser: tom_reg, round: '2')
# May Round 3
Match.create(tournament_id: t4.id, winner: nat_reg, loser: dre_reg, round: '3')
Match.create(tournament_id: t4.id, winner: ben_reg, loser: ham_reg, round: '3')
Match.create(tournament_id: t4.id, winner: atl_reg, loser: mag_reg, round: '3')
Match.create(tournament_id: t4.id, winner: epi_reg, loser: liv_reg, round: '3')
Match.create(tournament_id: t4.id, winner: avi_reg, loser: tat_reg, round: '3')
Match.create(tournament_id: t4.id, winner: tom_reg, loser: bet_reg, round: '3')
# May Round 4
Match.create(tournament_id: t4.id, winner: epi_reg, loser: ham_reg, round: '4')
Match.create(tournament_id: t4.id, winner: avi_reg, loser: liv_reg, round: '4')
Match.create(tournament_id: t4.id, winner: tom_reg, loser: mag_reg, round: '4')
Match.create(tournament_id: t4.id, winner: bet_reg, loser: tat_reg, round: '4')
Match.create(tournament_id: t4.id, winner: atl_reg, loser: dre_reg, round: '4')
Match.create(tournament_id: t4.id, winner: ben_reg, loser: nat_reg, round: '4')
# May Semifinals
Match.create(tournament_id: t4.id, winner: atl_reg, loser: ben_reg, round: 'semifinals')
Match.create(tournament_id: t4.id, winner: epi_reg, loser: nat_reg, round: 'semifinals')
# May Finals
Match.create(tournament_id: t4.id, winner: epi_reg, loser: atl_reg, round: 'finals')

# # Closed Alpha Tournaments
# atl = Player.create(ign: 'Atlanta', elo: 1600)
# ben = Player.create(name: 'Ben Sullivan', ign: 'BeneBeats', elo: 1600)
# bmc = Player.create(ign: 'bmcfluff', elo: 1600)
# connor = Player.create(ign: 'Connor', elo: 1600)
# dan = Player.create(ign: 'DanGing', elo: 1600)
# eot = Player.create(ign: 'EmperorOTide', elo: 1600)
# agenda = Player.create(ign: 'EpicAgenda', elo: 1600)
# cat = Player.create(ign: 'EPICat', elo: 1600)
# krok = Player.create(ign: 'Krokmaster', elo: 1600)
# liv = Player.create(ign: 'livious', elo: 1600)
# mag = Player.create(ign: 'Magnetic', elo: 1600)
# nhb = Player.create(ign: 'nhblandin', elo: 1600)
# nov = Player.create(name: 'Nathan Overbay', ign: 'noverb', elo: 1600)
# tat = Player.create(ign: 'TatDaddy', elo: 1600)
# tom = Player.create(ign: 'TomEpicGamin', elo: 1600)
# www = Player.create(ign: 'www', elo: 1600)
# ham = Player.create(ign: 'Hampuse1', elo: 1600)
#
# mag_reg = Registration.create(player_id: mag.id, deck_id: 1) # Magnetic
# tom_reg = Registration.create(player_id: tom.id, deck_id: 1) # TomEpicGamin
# atl_reg = Registration.create(player_id: atl.id, deck_id: 1) # Atlanta
# tat_reg = Registration.create(player_id: tat.id, deck_id: 1) # TatDaddy
# bmc_reg = Registration.create(player_id: bmc.id, deck_id: 1) # bmcfluff
# nhb_reg = Registration.create(player_id: nhb.id, deck_id: 1) # nhblandin
# nov_reg = Registration.create(player_id: nov.id, deck_id: 1) # noverb
# liv_reg = Registration.create(player_id: liv.id, deck_id: 1) # livious
# Match.create(tournament_id: t1.id, winner: mag_reg, loser: tom_reg, round: '1')
# Match.create(tournament_id: t1.id, winner: atl_reg, loser: tat_reg, round: '1')
# Match.create(tournament_id: t1.id, winner: bmc_reg, loser: nhb_reg, round: '1')
# Match.create(tournament_id: t1.id, winner: nov_reg, loser: liv_reg, round: '1')
# Match.create(tournament_id: t1.id, winner: nhb_reg, loser: tom_reg, round: '2')
# Match.create(tournament_id: t1.id, winner: mag_reg, loser: atl_reg, round: '2')
# Match.create(tournament_id: t1.id, winner: bmc_reg, loser: nov_reg, round: '2')
# Match.create(tournament_id: t1.id, winner: tat_reg, loser: liv_reg, round: '2')
# Match.create(tournament_id: t1.id, winner: liv_reg, loser: tom_reg, round: '3')
# Match.create(tournament_id: t1.id, winner: mag_reg, loser: bmc_reg, round: '3')
# Match.create(tournament_id: t1.id, winner: nhb_reg, loser: atl_reg, round: '3')
# Match.create(tournament_id: t1.id, winner: nov_reg, loser: tat_reg, round: '3')
#
# t2 = Tournament.create(name: 'June 2019 Monthly Digital', format: 'Dark Draft', date: DateTime.new(2019, 6, 29))
# tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
# liv_reg = Registration.create(player_id: liv.id, deck_id: 1)
# eot_reg = Registration.create(player_id: eot.id, deck_id: 1)
# dan_reg = Registration.create(player_id: dan.id, deck_id: 1)
# atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
# tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
# mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
# nov_reg = Registration.create(player_id: nov.id, deck_id: 1)
# Match.create(tournament_id: t2.id, winner: tat_reg, loser: liv_reg, round: '1')
# Match.create(tournament_id: t2.id, winner: eot_reg, loser: dan_reg, round: '1')
# Match.create(tournament_id: t2.id, winner: atl_reg, loser: tom_reg, round: '1')
# Match.create(tournament_id: t2.id, winner: mag_reg, loser: nov_reg, round: '1')
# Match.create(tournament_id: t2.id, winner: liv_reg, loser: nov_reg, round: '2')
# Match.create(tournament_id: t2.id, winner: dan_reg, loser: tom_reg, round: '2')
# Match.create(tournament_id: t2.id, winner: tat_reg, loser: atl_reg, round: '2')
# Match.create(tournament_id: t2.id, winner: eot_reg, loser: mag_reg, round: '2')
# Match.create(tournament_id: t2.id, winner: dan_reg, loser: mag_reg, round: '3')
# Match.create(tournament_id: t2.id, winner: tat_reg, loser: eot_reg, round: '3')
# Match.create(tournament_id: t2.id, winner: tom_reg, loser: nov_reg, round: '3')
# Match.create(tournament_id: t2.id, winner: liv_reg, loser: atl_reg, round: '3')
# Match.create(tournament_id: t2.id, winner: tat_reg, loser: liv_reg, round: 'finals')
#
# t3 = Tournament.create(name: 'July 2019 Monthly Digital', format: 'Dark Draft', date: DateTime.new(2019, 7, 27))
# tom_reg = Registration.create(player_id: tom.id, deck_id: 1)
# liv_reg = Registration.create(player_id: liv.id, deck_id: 1)
# ben_reg = Registration.create(player_id: ben.id, deck_id: 1)
# www_reg = Registration.create(player_id: www.id, deck_id: 1)
# ham_reg = Registration.create(player_id: ham.id, deck_id: 1)
# nov_reg = Registration.create(player_id: nov.id, deck_id: 1)
# connor_reg = Registration.create(player_id: connor.id, deck_id: 1)
# atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
# mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
# agenda_reg = Registration.create(player_id: agenda.id, deck_id: 1)
# bmc_reg = Registration.create(player_id: bmc.id, deck_id: 1)
# Match.create(tournament_id: t3.id, winner: tom_reg, loser: liv_reg, round: '1')
# Match.create(tournament_id: t3.id, winner: ben_reg, loser: www_reg, round: '1')
# Match.create(tournament_id: t3.id, winner: ham_reg, loser: nov_reg, round: '1')
# Match.create(tournament_id: t3.id, winner: connor_reg, loser: atl_reg, round: '1')
# Match.create(tournament_id: t3.id, winner: mag_reg, loser: agenda_reg, round: '1')
# Match.create(tournament_id: t3.id, winner: bmc_reg, loser: tom_reg, round: '2')
# Match.create(tournament_id: t3.id, winner: ben_reg, loser: mag_reg, round: '2')
# Match.create(tournament_id: t3.id, winner: www_reg, loser: nov_reg, round: '2')
# Match.create(tournament_id: t3.id, winner: agenda_reg, loser: atl_reg, round: '2')
# Match.create(tournament_id: t3.id, winner: liv_reg, loser: www_reg, round: '3')
# Match.create(tournament_id: t3.id, winner: agenda_reg, loser: ham_reg, round: '3')
# Match.create(tournament_id: t3.id, winner: mag_reg, loser: tom_reg, round: '3')
# Match.create(tournament_id: t3.id, winner: bmc_reg, loser: ben_reg, round: '3')
# Match.create(tournament_id: t3.id, winner: nov_reg, loser: connor_reg, round: '3')
# Match.create(tournament_id: t3.id, winner: mag_reg, loser: liv_reg, round: '4')
# Match.create(tournament_id: t3.id, winner: connor_reg, loser: www_reg, round: '4')
# Match.create(tournament_id: t3.id, winner: nov_reg, loser: tom_reg, round: '4')
# Match.create(tournament_id: t3.id, winner: ham_reg, loser: ben_reg, round: '4')
# Match.create(tournament_id: t3.id, winner: bmc_reg, loser: agenda_reg, round: '4')
# Match.create(tournament_id: t3.id, winner: ben_reg, loser: bmc_reg, round: 'semifinals')
# Match.create(tournament_id: t3.id, winner: ham_reg, loser: mag_reg, round: 'semifinals')
# Match.create(tournament_id: t3.id, winner: ben_reg, loser: ham_reg, round: 'finals')
#
# t4 = Tournament.create(name: 'August 2019 Monthly Digital', format: 'Constructed', date: DateTime.new(2019, 8, 31))
# tat_reg = Registration.create(player_id: tat.id, deck_id: 1)
# cat_reg = Registration.create(player_id: cat.id, deck_id: 1)
# dan_reg = Registration.create(player_id: dan.id, deck_id: 1)
# mag_reg = Registration.create(player_id: mag.id, deck_id: 1)
# nov_reg = Registration.create(player_id: nov.id, deck_id: 1)
# atl_reg = Registration.create(player_id: atl.id, deck_id: 1)
# Match.create(tournament_id: t4.id, winner: tat_reg, loser: cat_reg, round: '1')
# Match.create(tournament_id: t4.id, winner: atl_reg, loser: dan_reg, round: '1')
# Match.create(tournament_id: t4.id, winner: mag_reg, loser: nov_reg, round: '1')
# Match.create(tournament_id: t4.id, winner: mag_reg, loser: atl_reg, round: '2')
# Match.create(tournament_id: t4.id, winner: tat_reg, loser: dan_reg, round: '2')
# Match.create(tournament_id: t4.id, winner: cat_reg, loser: nov_reg, round: '2')
# Match.create(tournament_id: t4.id, winner: atl_reg, loser: cat_reg, round: '3')
# Match.create(tournament_id: t4.id, winner: nov_reg, loser: dan_reg, round: '3')
# Match.create(tournament_id: t4.id, winner: mag_reg, loser: tat_reg, round: '3')
# Match.create(tournament_id: t4.id, winner: tat_reg, loser: mag_reg, round: 'finals')
#
# Tournament.create(name: 'September 2019 Monthly Digital', format: 'Dark Draft', date: DateTime.new(2019, 9, 28))
