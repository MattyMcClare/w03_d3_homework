require('pry')
require_relative('../models/artists.rb')
require_relative('../models/albums.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Prince'})
artist1.save()

artist2 = Artist.new({'name' => 'Mateusz Stanczak'})
artist2.save()

album1 = Album.new({
  'name' => 'Purple Rain',
  'genre' => 'Rock/Pop',
  'artist_id' => artist1.id})
album1.save()

album2 = Album.new({
  'name' => 'Lovesexy',
  'genre' => 'Rock',
  'artist_id' => artist1.id})
album2.save()

album3 = Album.new({
  'name' => 'Perfect Tonight',
  'genre' => 'Pop',
  'artist_id' => artist2.id})
album3.save()
# p album1

# found = Album.find(album1.id)
# p found

# p Album.find(album2)
# p Artist.all
# p "--"
#
# artist1.name = '33'
# artist1.update
# p Artist.all

# p Album.all
# album1.name = 'Hello Baby'
# album1.genre = 'Electro'
# album1.update
# p Album.all

# found = Artist.find(artst1.id)
# p found

binding.pry()
nil
