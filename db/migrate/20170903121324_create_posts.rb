class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :body
      t.references :lesson, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
