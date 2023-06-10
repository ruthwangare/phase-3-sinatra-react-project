class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :thumbnail_url
      t.string :video_url
      t.string :genre
     #      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
