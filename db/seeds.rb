puts "Seeding users..."
user1 = User.create(name: "Lilith")
user2 = User.create(name: "Gilgamesh")
user3 = User.create(name: "Tartarian")

puts "Seeding categories..."
category1 = Category.create(name: "Action")
category2 = Category.create(name: "Adventure")
category3 = Category.create(name: "Sports")

puts "Seeding games..."
game1 = Game.create(
  title: "Elden Ring",
  description: "Embark on an epic journey in a world of fantasy and mystery. Uncover the secrets of the Elden Ring and face formidable challenges in this highly anticipated action RPG.",
  thumbnail_url: "http://localhost:9292/gameimages/Elden ring.jpg",
  video_url: "http://localhost:9292/trailers/Elden Ring 【GMV】_The beginning of anera.mp4"
)

game2 = Game.create(
  title: "Diablo IV",
  description: "Descend into the depths of darkness as you battle demonic forces in the highly anticipated Diablo IV. Prepare to face epic bosses, discover legendary loot, and forge your own path in a world plagued by evil.",
  thumbnail_url: "http://localhost:9292/gameimages/Diablo iv.jpg",
  video_url: "http://localhost:9292/trailers/DIABLO 4 - Official Lilith.mp4"
)

game3 = Game.create(
  title: "World of Warcraft",
  description: "Enter the vast and immersive world of Azeroth in World of Warcraft. Join millions of players in an epic online adventure, where you can explore breathtaking landscapes, engage in epic battles, and forge lasting friendships.",
  thumbnail_url: "http://localhost:9292/gameimages/World of Warcraft.jpg",
  video_url: "http://localhost:9292/trailers/World of Warcraft.mp4"
)

game4 = Game.create(
  title: "The Witcher 3",
  description: "Step into the shoes of Geralt of Rivia, a legendary monster hunter, in The Witcher 3. Embark on a captivating open-world adventure filled with thrilling quests, intense combat, and morally challenging choices.",
  thumbnail_url: "http://localhost:9292/gameimages/The witcher 3.jpg",
  video_url: "https://example.com/games4.mp4"
)

game5 = Game.create(
  title: "Nier: Automata",
  description: "Uncover the mysteries of a post-apocalyptic world in Nier: Automata. Join android warriors in a breathtaking action RPG experience, where humanity's fate hangs in the balance and choices shape the future.",
  thumbnail_url: "http://localhost:9292/gameimages/Nier Automata - PlayStation.jpeg",
  video_url: "https://example.com/games5.mp4"
)
game6 = Game.create(
  title: "Call of Duty",
  description: "Answer the call of duty and experience adrenaline-pumping warfare like never before. Engage in intense multiplayer battles, gripping single-player campaigns, and cooperative missions in this iconic first-person shooter franchise.",
  thumbnail_url: "http://localhost:9292/gameimages/Call of Duty.jpg",
  video_url: "https://example.com/games6.mp4"
)

game7 = Game.create(
  title: "Cyberpunk 2077",
  description: "Immerse yourself in the neon-lit streets of Night City in Cyberpunk 2077. Become a mercenary outlaw and navigate a dystopian future filled with high-tech weaponry, cybernetic enhancements, and morally complex choices.",
  thumbnail_url:  "http://localhost:9292/gameimages/Cyberpunk 2077.jpg",
  video_url: "https://example.com/games7.mp4"
)

game8 = Game.create(
  title: "Fifa 14",
  description: "Experience the thrill of the beautiful game in FIFA 14. Play as your favorite football teams, compete in realistic matches, and showcase your skills in the world's most popular sport.",
  thumbnail_url:  "http://localhost:9292/gameimages/Fifa14.jpg",
  video_url: "https://example.com/games8.mp4"
)

game9 = Game.create(
  title: "Final Fantasy XV",
  description: "Embark on an epic journey in the fantastical world of Final Fantasy XV. Join a band of heroes on a mission to save their kingdom, encounter magical creatures, and engage in strategic battles in this beloved RPG.",
  thumbnail_url:"http://localhost:9292/gameimages/Final fantasy xv.jpg",
  video_url: "https://example.com/games9.mp4"
)

game10 = Game.create(
  title: "GTA",
  description: "Enter the sprawling open-world sandbox of GTA and experience a life of crime and adventure. Engage in high-speed chases, heists, and explore a vibrant urban landscape filled with opportunities and dangers at every turn.",
  thumbnail_url: "http://localhost:9292/gameimages/GTA.jpg",
  video_url: "https://example.com/games10.mp4"
)

game11 = Game.create(
  title: "Need for Speed",
  description: "Buckle up and get ready for high-octane racing action in Need for Speed. Push your limits, customize your cars, and compete against skilled drivers in thrilling street races and exhilarating pursuits.",
  thumbnail_url:  "http://localhost:9292/gameimages/Need For Speed.jpg",
  video_url: "https://example.com/games11.mp4"
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
    video_url: "http://localhost:9292/trailers/Elden Ring【GMV】_ The beginning of an era.mp4",
    game_id: 1
  )

  trailer2 = Trailer.create(
    title: "Gameplay Trailer",
    video_url: "http://localhost:9292/trailers/DIABLO 4 -Official Lilith.mp4",
    game_id: 2
  )

  trailer3 = Trailer.create(
    title: "Gameplay Trailer",
    video_url: "http://localhost:9292/trailers/World of Warcraft.mp4",
    game_id: 3
  )

  puts "✅ Done seeding!"

