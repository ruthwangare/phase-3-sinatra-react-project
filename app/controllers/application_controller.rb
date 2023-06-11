class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/images/:imageName' do
    image_name = params[:imageName]
    image_path = File.join('public/gameimages', image_name)

    if File.exist?(image_path)
      content_type 'image/jpeg' if image_name.downcase.end_with?('.jpg', '.jpeg')
      send_file(image_path)
    else
      status 404
      'Image not found'
    end
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

  get '/games' do
    games = Game.all
    games_with_images = games.map do |game|
      {
        id: game.id,
        title: game.title,
        description: game.description,
        thumbnail_url: "/images/#{game.thumbnail_url}",
        video_url: game.video_url
      }
    end
    games_with_images.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game_with_image = {
      id: game.id,
      title: game.title,
      description: game.description,
      thumbnail_url: "/images/#{game.thumbnail_url}",
      video_url: game.video_url
    }
    game_with_image.to_json
  end

  get '/trailers/:id' do
    trailer = Trailer.find(params[:id])

    if trailer
      # Retrieve the associated game
      game = trailer.game

      # Prepare the response JSON
      response = {
        id: trailer.id,
        title: trailer.title,
        video_url: trailer.video_url,
        game: {
          id: game.id,
          title: game.title,
          description: game.description,
          thumbnail_url: game.thumbnail_url
          # Include other game attributes as needed
        }
      }

      response.to_json
    else
      status 404
      'Trailer not found'
    end
  end

end
