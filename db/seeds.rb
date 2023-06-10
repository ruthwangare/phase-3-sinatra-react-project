puts "Seeding users..."
user1 = User.create(name: "Lilith")
user2 = User.create(name: "Gilgamesh")
user3 = User.create(name: "Tartarian")

puts "Seeding categories..."
category1 = Category.create(name: "Action")
category2 = Category.create(name: "Adventure")
category3 = Category.create(name: "Sports")

puts "Seeding games..."
game1 = Game.create(title: "Elden Ring",
description: "Description 1",
 thumbnail_url: "https://example.com/game1.jpg",
  video_url: "https://example.com/games1.mp4",
  )

game2 = Game.create(
  title: "Diablo IV",
description: "Description 2",
 thumbnail_url: "https://example.com/game2.jpg",
  video_url: "https://example.com/games2.mp4",
  )

game3 = Game.create(title: "World of Warcraft",
 description: "Description 3",
 thumbnail_url: "https://example.com/game4.jpg",
  video_url: "https://example.com/games3.mp4",
  )

game4 = Game.create(title: "The witcher 3",
 description: "Description 4",
 thumbnail_url: "https://example.com/game4.jpg",
 video_url: "https://example.com/games4.mp4",
  )

game5 = Game.create(
  title: "Nier:Automata",
   description: "Description 5",
thumbnail_url: "https://example.com/game4.jpg",
 video_url: "https://example.com/games4.mp4",
  )


  puts "Seeding reviews..."

  review1 = Review.create(
    content: "Great game!",
    rating: 5,
    user_id: 1,
    game_id: 1
  )

  review2 = Review.create(
    content: "Awesome graphics!",
    rating: 4,
    user_id: 2,
    game_id: 1
  )

  review3 = Review.create(
    content: "Could be better.",
    rating: 3,
    user_id: 3,
    game_id: 1
  )

  review4 = Review.create(
    content: "Very addictive!",
    rating: 5,
    user_id: 1,
    game_id: 2
  )

  review5 = Review.create(
    content: "Loved the storyline.",
    rating: 4,
    user_id: 2,
    game_id: 2
  )

  review6 = Review.create(
    content: "Not my cup of tea.",
    rating: 2,
    user_id: 3,
    game_id: 2
  )

  puts "Seeding trailers..."

trailer1 = Trailer.create(
  title: "Official Trailer 1",
  video_url: "https://example.com/trailer1.mp4",
  game_id: 1
)


trailer2 = Trailer.create(
  title: "Gameplay Trailer",
  video_url: "https://example.com/trailer3.mp4",
  game_id: 2
)

trailer3 = Trailer.create(
  title: "Gameplay Trailer",
  video_url: "https://example.com/trailer3.mp4",
  game_id: 3
)

puts "✅ Done seeding!"
