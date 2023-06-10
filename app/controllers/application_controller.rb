class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

    get '/games' do
      games = Game.all
      games.to_json
    end


    get '/games/:id' do
      game = Game.find(params[:id])
      game.to_json
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


get '/trailers' do
  trailers = Trailer.all
  trailers.to_json
end


get '/trailers/:id' do
  trailer = Trailer.find(params[:id])
  trailer.to_json
end

end