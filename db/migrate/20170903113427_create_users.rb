class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.text :description
      t.text :image
      t.string :admin
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
