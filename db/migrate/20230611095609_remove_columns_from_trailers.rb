class RemoveColumnsFromTrailers < ActiveRecord::Migration[6.1]
  def change
    remove_column :trailers, :column1
  remove_column :trailers, :column2
  remove_column :trailers, :column3
  end
end
