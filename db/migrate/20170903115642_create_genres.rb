class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :name
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
