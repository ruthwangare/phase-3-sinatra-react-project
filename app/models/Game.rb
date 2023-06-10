class Game < ActiveRecord::Base
    belongs_to :category
    has_many :reviews
    has_one :trailer
end