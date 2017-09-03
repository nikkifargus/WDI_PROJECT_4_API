class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.time :time
      t.date :date
      t.references :genre, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
