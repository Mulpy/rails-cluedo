# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "clearing DB"
Suspect.destroy_all
Weapon.destroy_all
Location.destroy_all

puts "seeding DB"

# Suspects
Suspect.create!(name: 'Miss Scarlet', color: 'red') # , photo: 'https://i.pinimg.com/originals/37/33/d1/3733d1b56e832b0326097f6976e0a70f.png')
Suspect.create!(name: 'Colonel Mustard', color: 'yellow') # , photo: 'https://userscontent2.emaze.com/images/ee789335-3a3d-41e6-8f32-8bcf0112ee4c/f3f177d5c5c12715f65b197b7c82ff17.jpg')
Suspect.create!(name: 'Mrs White', color: 'white') # , photo: 'https://i.pinimg.com/474x/aa/9c/e8/aa9ce8131418020406798e4eee77e081--clue-movie-madeline-kahn.jpg')
Suspect.create!(name: 'Mrs Peacock', color: 'blue') # , photo: 'https://24.media.tumblr.com/tumblr_leavr0lJhz1qfmj6mo1_500.png')
Suspect.create!(name: 'Reverend Green', color: 'green') # , photo: 'https://66.media.tumblr.com/4dbc983079bb5faade006589a40e4a10/772b17b1586e52a2-2b/s640x960/10a305b4b7b14ad007abda8d48cd528269b222f1.png')
Suspect.create!(name: 'Prof. Plum', color: 'purple') # , photo: 'https://assets.mycast.io/characters/professor-plum-77-normal.jpg?1575556804')

# Weapons
Weapon.create!(name: 'Candlestick') # , photo: 'https://en.wikipedia.org/wiki/Candlestick#/media/File:Candlestick_(one_of_a_set_of_eight)_MET_DP-13265-131.jpg')
Weapon.create!(name: 'Dagger') # , photo: 'https://en.wikipedia.org/wiki/Dagger#/media/File:Fs-dagger.jpg')
Weapon.create!(name: 'Lead Pipe') # , photo: 'https://c8.alamy.com/comp/H7Y1K0/cluedo-board-game-murder-weapon-pieces-iron-bar-H7Y1K0.jpg')
Weapon.create!(name: 'Revolver') # , photo: 'https://en.wikipedia.org/wiki/Revolver#/media/File:Colt_Autentica.jpg')
Weapon.create!(name: 'Rope') # , photo: 'https://static.turbosquid.com/Preview/2015/10/08__14_36_28/Rope_00.jpg92675f0f-a310-45b0-aae8-64038c237511Res300.jpg')
Weapon.create!(name: 'Spanner') # , photo: 'https://en.wikipedia.org/wiki/Wrench#/media/File:Cl%C3%A9_plate.jpg')

# Locations  Bathroom, Study, , Game Room, Garage, Bedroom, Living Room, , and Courtyard
Location.create!(room: 'Kitchen') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg' )
Location.create!(room: 'Dining Room') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Hall') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Lounge') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Study') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Ballroom') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Conservatory') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Billiard Room') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')
Location.create!(room: 'Library') # , photo: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Cluedo_board_text.svg')

puts "Created #{Suspect.count} Suspects"
puts "Created #{Weapon.count} Weapons"
puts "Created #{Location.count} Locations"
