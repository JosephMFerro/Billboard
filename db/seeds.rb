4.times do
  billboardmodel = Billboardmodel.create(
    name: Faker::Music.genre,
    location: Faker::Nation.capital_city,
  )
  20.times do
    billboardmodel.songs.create(
      name: Faker::FunnyName.two_word_name,
      artist: Faker::RockBand.name,
    )
  end
end
puts "4 billboards created"
puts "20 songs created per billboard"