class CreateTrailers < ActiveRecord::Migration[6.1]
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :video_url
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
