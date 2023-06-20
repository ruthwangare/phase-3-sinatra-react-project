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

  get '/videos/:videoName' do
    video_name = params[:videoName]
    video_path = File.join('public/trailers', video_name)

    if File.exist?(video_path)
      content_type 'video/mp4' if video_name.downcase.end_with?('.mp4')
      send_file(video_path)
    else
      status 404
      'Video not found'
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
        thumbnail_url: "/images/gameimages/#{game.id}.jpg",
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
      thumbnail_url: "/images/gameimages/#{game.id}.jpg",
      video_url: game.video_url
    }
    game_with_image.to_json
  end

  get '/trailers/:id' do
    trailer = Trailer.find_by(id: params[:id])

    if trailer
      response = {
        id: trailer.id,
        title: trailer.title,
        video_url: trailer.video_url,
        game: {
          id: trailer.game.id,
          title: trailer.game.title,
          description: trailer.game.description,
          thumbnail_url: trailer.game.thumbnail_url
        }
      }

      response.to_json
    else
      status 404
      'Trailer not found'
    end
  end

  get '/trailers' do
    trailers = Trailer.all.map do |trailer|
      {
        id: trailer.id,
        title: trailer.title,
        video_url: trailer.video_url,
        game: {
          id: trailer.game.id,
          title: trailer.game.title,
          description: trailer.game.description,
          thumbnail_url: trailer.game.thumbnail_url
        }
      }
    end

    trailers.to_json
  end


end
