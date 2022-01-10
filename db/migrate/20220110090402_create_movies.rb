class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :description
      t.string :title
      t.float :duration

      t.timestamps
    end
  end
end
